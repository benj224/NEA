import "dart:convert";
import "package:flutter/services.dart";
import "package:flutter/material.dart";
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


/*    final pack = Material(
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
    );*/

   // Future<List<Widget>> packFuture = loadJsonPacks();



    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),

      body: Center(
        child: Container(
          height: 200,
          child: MyWidget()
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


class MyWidget extends StatefulWidget{
  @override
  State createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget>{
  var _result;
  @override
  void initState(){
    loadJsonPacks().then((result) {
      setState(() {
        _result = result;
      });
    });
  }

  @override
  Widget build(context){
    if (_result == null){
      return new CircularProgressIndicator();
    }
    return _result;
  }
}




Future<ListView> loadJsonPacks() async{//add null saftey at some point
  Future<String> json = rootBundle.loadString("assets/json/test.json");
  String rawJson = await json;

  Map<String, dynamic> map = jsonDecode(rawJson);

  String title = map["title"];
  double progress = map["progress"];

  return ListView(
    scrollDirection: Axis.horizontal,
    children: [PackDisplay(progress: progress, name: title,)],
  );

}


