import 'dart:convert';

import 'package:dropdownapi/models/categorymodel.dart';
import 'package:dropdownapi/models/postapimodel.dart';
import 'package:dropdownapi/screens/updatescreen.dart';
import 'package:dropdownapi/services/apiservice.dart';
import 'package:flutter/material.dart';
class NewCategory extends StatefulWidget {
  const NewCategory({Key? key}) : super(key: key);

  @override
  _NewCategoryState createState() => _NewCategoryState();
}

class _NewCategoryState extends State<NewCategory> {
  TextEditingController namecontrl=TextEditingController();
  TextEditingController imgcontrl=TextEditingController();
  //TextEditingController useridcontrl=TextEditingController();
  //TextEditingController idcontrl=TextEditingController();
  var inputurl='https://api.escuelajs.co/api/v1/categories/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: namecontrl,
              decoration: const InputDecoration(
                  hintText: "name",
                  labelText: 'name',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),

                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      )
                  )

              ),
            ),
            TextFormField(
              controller: imgcontrl,
              decoration: const InputDecoration(
                  hintText: "imageurl",
                  labelText: 'imageurl',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),

                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      )
                  )

              ),
            ),
            // TextFormField(
            //   controller: useridcontrl,
            //   decoration: const InputDecoration(
            //       hintText: "userid",
            //       labelText: 'userid',
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.black,
            //         ),
            //
            //       ),
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(
            //             color: Colors.blue,
            //           )
            //       )
            //
            //   ),
            // ),
            // TextFormField(
            //   controller: idcontrl,
            //   decoration: const InputDecoration(
            //     hintText: "id",
            //     labelText: 'id',
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Colors.black,
            //       ),
            //
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Colors.blue,
            //       )
            //     )
            //
            // ),
            // ),
            ElevatedButton(onPressed: () async {
             CategoryModel newfield=CategoryModel(name:namecontrl.text,img: imgcontrl.text);
              var p= await ApiService().createUser(inputurl,body:newfield.toJson());
              print(p.name);
            },
                child: const Text("Submit")
            ),
            // ElevatedButton(
            //   onPressed:(){
            //     Navigator.push(context, MaterialPageRoute(builder:((context) => UserUpdation())));
            //   },
            //   child:Text("Update") ,
            // )


          ],
        ),
      ),
    );
  }
}
