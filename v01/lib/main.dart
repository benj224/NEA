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

    final List<Widget> packDisplays = [
      PackDisplay(),
      PackDisplay(),
      PackDisplay(),
      PackDisplay(),
      PackDisplay(),
      PackDisplay(),
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),

      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              IceCreamCard(flavorColor: Colors.redAccent, flavor: 'Strawberry'),
              IceCreamCard(flavorColor: Colors.brown, flavor: 'Chocolate'),
              IceCreamCard(flavorColor: Colors.blueAccent, flavor: 'Blueberry'),
              IceCreamCard(flavorColor: Colors.amberAccent, flavor: 'Lemon'),
              IceCreamCard(flavorColor: Colors.greenAccent, flavor: 'Mint'),
            ],
          ),
        ),
      ),
    );
  }
}


class PackDisplay extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox(
        width: 100,
        height: 200,
        child: Material(
            elevation: 5,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 100,
              height: 200,
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


class IceCreamCard extends StatelessWidget {
  const IceCreamCard({
    this.flavorColor = Colors.redAccent,
    this.flavor = 'Flavor Name',
  });

  final Color flavorColor;
  final String flavor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee), width: 2.0),
        color: Colors.white38,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
                Icons.icecream,
                size: 100.0,
                color: flavorColor,
              )),
          SizedBox(
            height: 20.0,
          ),
          Text(
            flavor,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: flavorColor),
          ),
        ],
      ),
    );
  }
}

