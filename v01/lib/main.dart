import "package:flutter/material.dart";
import "package:file_picker/file_picker.dart";

import 'login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),

      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Material(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: 150,
                        height: 200,
                        color: Colors.red,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: FractionalOffset(0.5, 0.1),
                              child:Text("Test") ,
                            )
                          ],
                        ),
                      )
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 220,
                    child: Material(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 150,
                          height: 200,
                          color: Colors.green,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: FractionalOffset(0.5, 0.1),
                                child:Text("Test2") ,
                              )
                            ],
                          ),
                        )
                    ),
                  ),
                ],
              )
            )
          )
        ],
      ),




      floatingActionButton: Row(
        children: [
          Align(
            child: FloatingActionButton(
              onPressed: (){
                selectFile();
              },
            ),
          alignment: Alignment.bottomLeft
          ),
        const SizedBox(
          width: 200,
        ),Align(
            child: FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn(key: UniqueKey(), title: "test title",)));
              },
            ),
            alignment: Alignment.bottomRight,
          )
        ]
      ),
    );
  }
}


void selectFile() async{
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if (result != null){
    PlatformFile file = result.files.first;
  }
}

