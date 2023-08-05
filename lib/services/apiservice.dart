import 'dart:convert';

import 'package:dropdownapi/models/categorymodel.dart';
import 'package:dropdownapi/models/countrymodel.dart';
import 'package:dropdownapi/models/usercreationmodel.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';

import '../models/postapimodel.dart';
class ApiService{
  Future<List<CountryModel>?> getData() async {
   List<CountryModel> data=[];
   try {
     var response = await http.get(
         Uri.parse("https://restcountries.com/v3.1/independent?status=true"));
     if (response.statusCode == 200) {
     //  var json = response.body;
        List country=json.decode(response.body);
       data=country.map((e) => CountryModel.fromJson(e)).toList();
       return data;
       //return countryModelFromJson(json);
     }


   }catch(e){
     print(e);
   }


  }
  Future<PostApi> createPost(String url,{required Map body})async{
    Uri uri=Uri.parse(url);
    return http.post(uri,body: body).then((http.Response response) {
      final int statuscode=response.statusCode;
      if(statuscode==200 || statuscode== 400 || statuscode==null){
        throw Exception("Error while fetching data");
      }
      return PostApi.fromJson(json.decode(response.body));
    }
    );
  }
  Future<CategoryModel> createUser(String url,{ required Map body})async{
    var uri= Uri.parse(url);
    return http.post(uri,body:body).then((http.Response response) {
      if(response.statusCode==201){
        return CategoryModel.fromJson(json.decode(response.body));
      }else{
        throw Exception("Error while fetching data");
      }
    });
  }
// Future createCategory(CategoryModel category)async{
//     var response= await http.post(Uri.parse('https://api.escuelajs.co/api/v1/categories/',),body:category.toJson() );
//     if (response.statusCode==201){
//       return CategoryModel.fromJson(json.decode(response.body));
//     }else{
//       return throw Exception("Fetching failed");
//     }
// }
Future updateUser(int? id,{required Map body})async{
    String url='https://api.escuelajs.co/api/v1/categories/$id';
    var reponse= await http.put(Uri.parse(url),body:body );
  return reponse.body;
}
Future<List<CategoryModel>?> getCategory()async{
    List<CategoryModel> data=[];
    var response= await http.get(Uri.parse('https://api.escuelajs.co/api/v1/categories/'));
    if(response.statusCode==200){
      List jsons=json.decode(response.body);
      data=jsons.map((e) => CategoryModel.fromJson(e)).toList();
      return data;

    }else{
      throw Exception("Error fetching data");
    }
}
 Future<String> deleteCategory(String id)  async {

    var response= await http.delete(Uri.parse('https://fakestoreapi.com/products/$id'),);
    if(response.statusCode==200){
      return response.body;
    }else{
      throw Exception('ERROR');
    }

     }
}

