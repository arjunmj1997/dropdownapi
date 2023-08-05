class UserCreate{
  String? name;
  String? job;
  int? id;
  String? createdat;
  UserCreate({this.id,this.name,this.createdat,this.job});

  factory UserCreate.fromJson(Map<String,dynamic> json){
    return UserCreate(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      createdat: json['createdAt'],
    );
  }

  Map toJson(){
    var map=new Map<String,dynamic>();
    map['name']=name;
    map['job']=job;
    return map;
  }
}