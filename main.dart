import 'sistem_Arclys_PPOB.dart';
import 'storage.dart';

void main() {
  final sistem = SistemArclys();
  sistem.daftarPelanggan = muatData(transaksiOut: sistem.daftarTransaksiDiproses); 
  sistem.jalankanMenu();
  simpanData(sistem.daftarPelanggan); 
}
