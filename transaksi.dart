import 'pelanggan.dart';

class Transaksi {
  final Pelanggan pelanggan;
  final String kodeProduk;
  final DateTime? tanggalTransaksi;

  Transaksi(this.pelanggan, this.kodeProduk, [DateTime? tanggal])
    : tanggalTransaksi = tanggal ?? DateTime.now();


  String informasiTransaksi() {
   return '${pelanggan.nama} | ${pelanggan.nomorHp} | $kodeProduk | $tanggalTransaksi';
  }
}
