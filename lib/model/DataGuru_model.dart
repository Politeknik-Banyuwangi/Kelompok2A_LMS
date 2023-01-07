class DataGuruModel {
  String id;
  String nama;
  String nip;
  String mapel;
  String alamat;

  DataGuruModel(
      {required this.id,
      required this.nama,
      required this.nip,
      required this.mapel,
      required this.alamat});

  factory DataGuruModel.formJson(Map<String, dynamic> json) => DataGuruModel(
        id: json['id'],
        nama: json['nama'],
        nip: json['nip'],
        mapel: json['mapel'],
        alamat: json['alamat'],
      );
}
