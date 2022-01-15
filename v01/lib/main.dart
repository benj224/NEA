import "dart:convert";
import "package:flutter/services.dart";
import "package:flutter/material.dart";
import 'login.dart';
import 'makepack.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:developer';
import 'globals.dart' as globals;

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(HivePackAdapter());
  Hive.registerAdapter(HiveQuestionAdapter());
  Hive.registerAdapter(HiveAnswerAdapter());

  runApp(MyApp());
}/// trace back directly from list view to try to get better picture
///




class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();




}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    globals.mainPage = Refresh;
  }

  @override
  void Refresh(){
    setState(() {
    });
  }

  @override
  Widget build(context) {
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
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreatePack(pack: null)));
        },
      ),
    );
  }
}


class PackDisplay extends StatefulWidget{
  PackDisplay({required this.name, required this.hivePack}) : super();
  final String name;
  final HivePack hivePack;

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
            ),
            Align(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.create_rounded),
                    onPressed: () async{
                      Box box = await Hive.openBox("Globals");
                      await box.put("editbox", widget.hivePack);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePack(pack: widget.hivePack)));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () async{
                      Box box = await Hive.openBox("Globals");
                      List<dynamic> pcks = box.get("packs");
                      List<HivePack> newPcks = [];
                      List<String> newTitles = [];
                      //List<Widget> newDisplayPacks = [];
                      pcks.forEach((pack) {
                        log(pack.title);
                        log(widget.name);
                        if(!(pack.title == widget.name)){
                          newPcks.add(pack);
                          newTitles.add(pack.title);
                          //newDisplayPacks.add(PackDisplay(name: pack.title, hivePack: pack));
                        }else{
                          log("pack deleted");
                          log(pack.title);
                        }
                      });
                      setState(() {
                        box.delete("packs");
                        box.put("packs", newPcks);
                        box.delete("titles");
                        box.put("titles", newTitles);
                        globals.packs();
                        globals.mainPage(); ///still not working
                      });
                    },
                  ),
                ],
              ),
            ),
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
    globals.packs = LdPks;
    loadPacks().then((result) {
      setState(() {
        _result = result;
      });
    });
  }

  void LdPks(){
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



List<Widget> displayPacks = [];
Future<ListView> loadPacks() async{//make retrun type widget to return item to add element if no titles

  Box box = await Hive.openBox("Globals");

  if(box.get("titles") == null){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: 100,
          child: Material(
            elevation: 5,
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Stack(
                children: [
                  const Align(
                    alignment: FractionalOffset(0.5, 0.1),
                    child: Text(
                      "You have no packs",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset(0.5, 0.5),
                    child: IconButton(
                        icon: Icon(Icons.create_outlined),
                        onPressed: () {
                          //open the pack creator, then do this for editing packs.
                        }),
                  ),
                ]
            ),
          ),
        ),
        ]

      );

  }else{
    List<dynamic> packs = box.get("packs");



    packs.forEach((pack) {
      PackDisplay pck = PackDisplay(name: pack.title, hivePack: pack);///finish changing to globals instead of current.
      displayPacks.add(pck);
    });


    return ListView(
      scrollDirection: Axis.horizontal,
      children: displayPacks,
    );
  }
}


