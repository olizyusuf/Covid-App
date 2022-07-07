class DataCovid {
  String? key;
  String? doc_count;
  int? jumlah_kasus;
  int? jumlah_sembuh;
  int? jumlah_meninggal;
  int? jumlah_dirawat;
  List? jenis_kelamin;
  List? kelompok_umur;
  Map<String, dynamic>? lokasi;
  Map<String, dynamic>? penambahan;

  DataCovid(
      {this.key,
      this.doc_count,
      this.jumlah_kasus,
      this.jumlah_sembuh,
      this.jumlah_meninggal,
      this.jumlah_dirawat,
      this.jenis_kelamin,
      this.kelompok_umur,
      this.lokasi,
      this.penambahan});
}
