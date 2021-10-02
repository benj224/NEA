import "package:flutter/material.dart";
import "package:file_picker/file_picker.dart";

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
        title: Text("Flutter App"),
      ),
      body: Column(children: <Widget>[
        Card(
          child: Text("CHART"),

        ),
        Card(
          child: Text("List of TX"),
        ),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          selectFile();
        },
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