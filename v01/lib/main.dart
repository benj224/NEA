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
      body: Column(children: <Widget>[
        Card(
          child: Text("CHART"),

        ),
        Card(
          child: Text("List of TX"),
        ),
      ],),

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

