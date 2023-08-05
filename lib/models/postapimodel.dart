class PostApi{
   final int? id;
   final String? userid;
   final String? body;
   final String? title;
   PostApi({this.id, this.userid,this.body,this.title});

  factory PostApi.fromJson(Map json){
    return PostApi(
      id: json['id'],
      userid: json['userId'],
      body: json['body'],
      title: json['title'],
    );
  }
  Map<String,dynamic> toJson(){
    Map<String,dynamic> map=new  Map<String,dynamic>();
   // map['id']=id;
    map['userId']=userid;
    map['body']=body;
    map['title']=title;
    return map;
  }

}