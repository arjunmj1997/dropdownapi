import 'dart:math';

import 'package:dropdownapi/main.dart';
import 'package:dropdownapi/screens/createfieldscreen.dart';
import 'package:dropdownapi/screens/updatescreen.dart';
import 'package:dropdownapi/services/apiservice.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
class ShowCategory extends StatefulWidget {
  const ShowCategory({Key? key}) : super(key: key);

  @override
  _ShowCategoryState createState() => _ShowCategoryState();
}

class _ShowCategoryState extends State<ShowCategory> {
  var popvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:FutureBuilder(
          future:ApiService().getCategory() ,
          builder: ( context, snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                itemCount:snapshot.data!.length ,
                  itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:458,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(snapshot.data![index].name.toString(),style: TextStyle(fontSize:25,color: Colors.black),),
                                    PopupMenuButton(
                                      icon:Icon(Icons.more_vert),
                                      onSelected: (int value){

                                        setState(() {
                                          // if(value==1){
                                          //   MyApp().navigatorkey.currentState!.push( MaterialPageRoute(builder:((context) => UserUpdation())));
                                          // }else{
                                          //   MyApp().navigatorkey.currentState!.push( MaterialPageRoute(builder:((context) => NewField())));
                                          // }
                                          popvalue=value;
                                        });
                                      },
                                        itemBuilder: (context)=>[
                                          PopupMenuItem(
                                            onTap: (){
                                            },
                                              value: 1,
                                              child:TextButton(onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>UserUpdation(id: snapshot.data![index].id,)));
                                              },
                                              child: const Padding(
                                                padding: EdgeInsets.only(right:30),
                                                child: Text('EDIT',style: TextStyle(color: Colors.black),),
                                              )),

                                          ),
                                          PopupMenuItem(
                                              value: 2,
                                              child:TextButton(onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder:(context)=>NewField()));
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 30),
                                                child: Text('ADD',style: TextStyle(color: Colors.black),),
                                              ),),
                                          ),
                                          PopupMenuItem(
                                              value: 3,
                                              child:TextButton(onPressed: () async {
                                                var data=await ApiService().deleteCategory(snapshot.data![index].id.toString());
                                               print(data.toString());
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 30),
                                                child: Text('DELETE',style: TextStyle(color: Colors.black),),
                                              ),),
                                          ),
                                        ])
                                  ],
                                ),
                              )),
                          const SizedBox(height: 5,),
                          Image.network(snapshot.data![index].img.toString(),)
                        ],
                      ),
                    ),
                  );
              });
            } else{
              return Center(child: CircularProgressIndicator());
            }


          },),
      ),
    );
  }
}
