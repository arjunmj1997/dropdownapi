import 'dart:convert';

import 'package:dropdownapi/models/countrymodel.dart';
import 'package:dropdownapi/providers/countryprovider.dart';
import 'package:dropdownapi/services/apiservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CountryModel>? fetchData=[];
  var drpvalue;
  bool isloaded=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     //fetchData= CountryProvider().getAll() ;
     dataFetch();
  }
  dataFetch()async{
    fetchData=await context.read<CategoryProvider>().getAll() ;
    if(fetchData!=null){
      setState(() {
        isloaded=true;
      });
    }
    return fetchData;
  }
  // dataFetch() async {
  //   var res= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  //   fetchData=jsonDecode(res.body);
  //   setState(() {
  //
  //   });
  //   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
              SizedBox(
                width: 500,
                height: 100,
                child: DropdownButton(
                    value: drpvalue,
                    items: fetchData!.map((e) {
                      return DropdownMenuItem(
                          value: e.cca3,
                        child:Column(
                          children: [
                            Text(e.name!.official.toString()),
                            //Text(e.name!.common.toString()),
                          ],
                        ),





                      );
                    }
                    ).toList(),

                    onChanged: (value) {
                      drpvalue = value ;
                      setState(() {

                      });
                    },
                 // dropdownColor: Colors.blue,
                ),
                // child: DropdownButtonFormField<String>(
                //   value: drpvalue,
                //   decoration: InputDecoration(
                //     hintText: "district",
                //
                //     //suffixIcon: Icon(Icons.panorama_fish_eye),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(15),
                //     ),
                //   ),
                //   onChanged: (ctgry) =>
                //       setState(() => drpvalue = ctgry),
                //   validator: (value) => value == null ? 'field required' : null,
                //   items:  ['palakkad', 'malappuram', 'thrissur', 'kollam', 'kottayam', 'ernakulam','alappuzha','pathanamthitta','trivandrum','idukki','wayanad','kozhikkode','kannur','kasargod']
                //       .map(
                //           (value) {
                //         return DropdownMenuItem(
                //           value: value,
                //           child: Text(value.toString()),
                //         );
                //       }).toList(),
                // ),
              )

          ],
        ),
      ),
    );
    // return Scaffold(
    //   body: SafeArea(
    //     child:FutureBuilder(
    //       future:context.read<CountryProvider>().getAll() ,
    //        builder: ( context,  snapshot) {
    //         if(snapshot.hasData){
    //           return ListView.builder(
    //             itemCount: snapshot.data!.length,
    //               itemBuilder:(context,index){
    //
    //               return Card(
    //                 child: Column(
    //                   children: [
    //                     Text(snapshot.data![index].name!.common.toString()),
    //                     Text(snapshot.data![index].name!.official.toString()),
    //                    // Text(snapshot.data![index].cca2.toString())
    //                   ],
    //                 ),
    //               );
    //               }
    //           );
    //         }else{
    //           return Center(child: CircularProgressIndicator());
    //         }
    //       },),
    //   ),
    // );
    // return Scaffold(
    //   body: SafeArea(
    //     child: DropdownButton(
    //       value: drpvalue,
    //       items:fetchData.map((e) {
    //         return DropdownMenuItem(child: Text(e['name']),value: e['id'],);
    //       }).toList(),
    //      onChanged: (value){
    //         drpvalue=value as int;
    //         setState(() {
    //
    //         });
    //      },
    //
    //     ),
    //   ),
    //
    // );
  }
}
