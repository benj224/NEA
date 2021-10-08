import 'dart:html';
import "dart:convert";
import "package:flutter/services.dart";
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
  Widget build(context) {


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
              alignment: FractionalOffset(0.5, 0.3),
              child: CircularProgressIndicator(
                strokeWidth: 6.0,
                value: 0.5,
              ),
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.32),
              child: Text("Text"),
            )
          ],
        ),
      ),
    );

    Future<List<Widget>> packFuture = loadJsonPacks();



    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),

      body: Center(
        child: Container(
          height: 200,
          child: ListView(
            children: FutureBuilder<List<Widget>>(
                future: packFuture,
                builder: (context, snapshot){
                  List<Widget>? children = []
                  if (snapshot.hasData){
                    List<Widget>? children = snapshot.data;
                  }else{
                    List<Widget>? children = [CircularProgressIndicator()];
                  }
                  return children;
                }
            ),
          )
            /*children: <Widget>[
              PackDisplay(
                progress: 0.2,
                name: "Pack 1",
              ),
              PackDisplay(
                progress: 0.4,
                name: "Pack 2",
              ),
              PackDisplay(
                progress: 0.6,
                name: "Pack 3",
              ),
            ],*/
      ),)
    );
  }
}

class PackDisplay extends StatefulWidget{
  PackDisplay({this.progress, this.name}) : super();
  final progress;
  final name;

  @override
  _PackDisplayState createState() => _PackDisplayState();
}

class _PackDisplayState extends State<PackDisplay>{

  @override
  Widget build(BuildContext context){
    return Material(
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
              child: Text(widget.name),
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.3),
              child: CircularProgressIndicator(
                strokeWidth: 6.0,
                value: widget.progress,
              ),
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.32),
              child: Text("Text"),
            )
          ],
        ),
      ),
    );
  }
}


class DisplayPack extends StatelessWidget {
  @override
  Widget build(context) {
    return FutureBuilder<ListView>(
        future: loadJsonPacks(),
        builder: (context, AsyncSnapshot<ListView> snapshot) {
          if (snapshot.hasData) {
            return snapshot.data;//Text(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}






/*Future<List<File>?> selectFile() async{
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    allowMultiple: true,
    type: FileType.custom,
    allowedExtensions: ["json"],
  );
  if (result != null){
    List<File> files = result.paths.map((path) => File(path)).toList();
    return files;
  }else{
    return null;
  }
}*/


Future<ListView> loadJsonPacks() async{//add null saftey at some point
  Future<String> json = rootBundle.loadString("assets/json/test.json");
  String rawJson = await json;

  Map<String, dynamic> map = jsonDecode(rawJson);

  String title = map["title"];
  double progress = map["progress"];

  return ListView(
    children: [PackDisplay(progress: progress, name: title,)],
  );

}


