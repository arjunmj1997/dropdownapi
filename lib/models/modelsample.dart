class Country{
  String? cca2;
  int? ccn3;
  String? cca3;
  Country({this.cca2,this.cca3,this.ccn3});
  Country.froJson(Map<String,dynamic> json){
    cca2=json['cca2'];
    ccn3=json['ccn3'];
    cca3=json['cca3'];
  }
}