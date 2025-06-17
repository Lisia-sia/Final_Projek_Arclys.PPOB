class Produk {
  static final Map<String, Map<String, int>> produkBerdasarkanKategori = {
    'Pulsa': {
      'PULSA5': 8000,
      'PULSA10': 13000,
      'PULSA15': 18000,
      'PULSA20': 23000,
      'PULSA25': 28000,
      'PULSA50': 53000,
      'PULSA100': 103000,
    },
    'PLN': {
      'PLN20': 23000,
      'PLN50': 53000,
      'PLN100': 103000,
    },
    'PDAM': {
      'PDAM33': 36000,
      'PDAM44': 47000,
      'PDAM79': 82000,
    },
    'Wi-Fi': {
      'WIFI100': 105000,
      'WIFI200': 205000,
      'WIFI330': 335000,
    }
  };

  static void tampilkanProduk() {
    print('\n=== Daftar Produk PPOB Berdasarkan Kategori ===');
    produkBerdasarkanKategori.forEach((kategori, daftarProduk) {
      print('\nKategori: $kategori');
      daftarProduk.forEach((kode, harga) {
        print('  Kode: $kode - Harga: Rp $harga');
      });
    });
  }
}
