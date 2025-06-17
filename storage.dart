import 'dart:io';
import 'pelanggan.dart';
import 'transaksi.dart';

void simpanData(List<Pelanggan> daftarPelanggan) {
  final file = File('data_pelanggan.txt');
  final sink = file.openWrite();

  for (var pelanggan in daftarPelanggan) {
    for (var transaksi in pelanggan.riwayatTransaksi) {
      sink.writeln('${pelanggan.nama};${pelanggan.nomorHp};${transaksi.kodeProduk};${transaksi.tanggalTransaksi!.toIso8601String()}');
    }
  }

  sink.close();
}


List<Pelanggan> muatData({List<Transaksi>? transaksiOut}) {
  final file = File('data_pelanggan.txt');
  if (!file.existsSync()) return [];

  final lines = file.readAsLinesSync();
  final List<Pelanggan> pelangganList = [];
  transaksiOut?.clear();

  for (var line in lines) {
    final bagian = line.split(';');
    if (bagian.length != 4) continue;

    String nama = bagian[0];
    String nomorHp = bagian[1];
    String kodeProduk = bagian[2];
    DateTime tanggal = DateTime.parse(bagian[3]);

    Pelanggan pelanggan = pelangganList.firstWhere(
      (p) => p.nama == nama && p.nomorHp == nomorHp,
      orElse: () {
        var baru = Pelanggan(nama, nomorHp);
        pelangganList.add(baru);
        return baru;
      },
    );

    final transaksi = Transaksi(pelanggan, kodeProduk, tanggal);
    pelanggan.tambahTransaksi(transaksi);
    transaksiOut?.add(transaksi);
  }

  return pelangganList;
}
