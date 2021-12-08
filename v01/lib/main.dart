import "dart:convert";
import "package:flutter/services.dart";
import "package:flutter/material.dart";
import 'login.dart';
import 'makepack.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:developer';

void main() async{
  await Hive.initFlutter();

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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePack()));
        },
      ),

    );
  }
}


class PackDisplay extends StatefulWidget{
  PackDisplay({required this.name}) : super();
  final String name;

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
                value: 0.5/*widget.progress*/,
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
    loadPacks().then((result) {
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




Future<ListView> loadPacks() async{//add null saftey at some point

  Box box = await Hive.openBox("TitleBox");

  if(box.get("titles") == null){
    log("titles null");
    return ListView();
  }else{
    List titles = box.get("titles");
    log("here1");
    List<Widget> packs = [];

    if(titles.cast<String>() == null){
      log("null");
    }else{
      List<String> _titles = titles.cast<String>();

      _titles.forEach((title) => {
        packs.add(PackDisplay(name: title))
      });
    }


    return ListView(
      scrollDirection: Axis.horizontal,
      children: packs,
    );
  }
}


