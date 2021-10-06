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


    final pack = Material(
      elevation: 5,
      color: Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: SizedBox(
        width: 100,
        child: Stack(
          children: [
            Align(
              alignment: FractionalOffset(0.5, 0.1),
              child: Text("Test"),
            ),
            Align(
              alignment: FractionalOffset(0.3, 0.3),
              child: CircularProgressIndicator(
                value: 0.5,
              ),
            ),
            Align(
              alignment: FractionalOffset(0.32, 0.3),
              child: Text("Text"),
            )
          ],
        ),
      ),
    );



    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),

      body: Center(
        child: Container(
          height: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              pack,
              pack,
            ],
          ),
        ),
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


