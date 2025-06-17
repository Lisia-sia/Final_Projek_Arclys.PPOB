import 'transaksi.dart';

class Pelanggan {
  String _nama;
  String _nomorHp;
  List<Transaksi> _riwayatTransaksi = [];

  Pelanggan(this._nama, this._nomorHp);

  String get nama => _nama;
  String get nomorHp => _nomorHp;

  void tambahTransaksi(Transaksi transaksi) {
    _riwayatTransaksi.add(transaksi);
  }

  void tampilkanRiwayatTransaksi() {
    if (_riwayatTransaksi.isEmpty) {
      print('Tidak ada riwayat transaksi untuk pelanggan $_nama.');
    } else {
      print('\nRiwayat Transaksi Pelanggan $_nama:');
      for (var transaksi in _riwayatTransaksi) {
        print(transaksi.informasiTransaksi());
      }
    }
  }
  List<Transaksi> get riwayatTransaksi => _riwayatTransaksi;
}
