import 'package:dropdownapi/models/countrymodel.dart';
import 'package:dropdownapi/services/apiservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier{
  ApiService api=ApiService();
   Future<List<CountryModel>?>getAll() async {
    List<CountryModel>? datas=await api.getData();
    notifyListeners();
    return datas;
  }
  Future preditFunction(int? id,{required Map body})async{
     var res= await api.updateUser(id, body: body);
     notifyListeners();
     print(res.toString());
  }
}