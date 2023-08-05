import 'package:dropdownapi/models/postapimodel.dart';
import 'package:dropdownapi/services/apiservice.dart';
import 'package:flutter/material.dart';
class NewField extends StatefulWidget {
  const NewField({Key? key}) : super(key: key);

  @override
  _NewFieldState createState() => _NewFieldState();
}

class _NewFieldState extends State<NewField> {
  TextEditingController bodycontrl=TextEditingController();
  TextEditingController titlecontrl=TextEditingController();
  TextEditingController useridcontrl=TextEditingController();
  TextEditingController idcontrl=TextEditingController();
  var inputurl='https://jsonplaceholder.typicode.com/posts';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: bodycontrl,
              decoration: const InputDecoration(
                hintText: "body part",
                labelText: 'body',
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
              controller: titlecontrl,
              decoration: const InputDecoration(
                hintText: "title part",
                labelText: 'title',
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
              controller: useridcontrl,
              decoration: const InputDecoration(
                hintText: "userid",
                labelText: 'userid',
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
              PostApi newfield=PostApi(id:0,userid:useridcontrl.text,body:bodycontrl.text,title: titlecontrl.text);
              var p= await ApiService().createPost(inputurl, body: newfield.toJson());
              print(p.title);
            },
                child: const Text("Submit")
            )
          ],
        ),
      ),
    );
  }
}
