class Covid {
  String positif;
  String sembuh;
  String meninggal;

  Covid({this.meninggal, this.positif, this.sembuh});

  Covid.fromJson(json) {
    positif = json['positif'];
    sembuh = json['sembuh'];
    meninggal = json['meninggal'];
  }
}
