class CategoryModel {
  int? id;
  String? name;
  String? img;
  String? createdat;
  String? updatedat;

  CategoryModel({this.id,this.name,this.createdat,this.img,this.updatedat});
  factory CategoryModel.fromJson(Map<String,dynamic> json){
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      img: json['image'],
      createdat: json['creationAt'],
      updatedat: json['updatedAt'],
    );
  }
  Map<String,dynamic> toJson(){
    var map=new Map<String,dynamic>();
    map['name']=name;
    map['image']=img;
    //map['creationAt']=createdat;
    //map['updatedAt']=updatedat;
    //map['id']=id;
    return map;
  }
}