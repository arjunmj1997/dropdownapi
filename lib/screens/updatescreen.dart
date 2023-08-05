import 'package:dropdownapi/models/categorymodel.dart';
import 'package:dropdownapi/providers/countryprovider.dart';
import 'package:dropdownapi/services/apiservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class UserUpdation extends StatefulWidget {
  final int? id;
  const UserUpdation({Key? key, required this.id, }) : super(key: key);

  @override
  _UserUpdationState createState() => _UserUpdationState();
}

class _UserUpdationState extends State<UserUpdation> {
 // var inputurl='https://api.escuelajs.co/api/v1/categories/';
  TextEditingController nameupcontrl=TextEditingController();
  TextEditingController imgupcontrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: nameupcontrl,
              decoration: const InputDecoration(
                helperText: "Name",
                labelText: 'name',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  )
                )

                )
              ),
            TextFormField(
              controller: imgupcontrl,
              decoration: InputDecoration(
                hintText: 'imageurl',
                labelText: 'imageurl',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                )
              ),
            ),
            ElevatedButton(
                onPressed:() async {
                  CategoryModel updatefield=CategoryModel(name: nameupcontrl.text,img:imgupcontrl.text);
                    //var update= await ApiService().updateUser(widget.id, body:updatefield.toJson());
                  var update=await context.read<CategoryProvider>().preditFunction(widget.id, body:updatefield.toJson());
                    print(update.toString());
                },
                child:Text("Update")
            )

          ],
        ),
      ),
    );
  }
}
