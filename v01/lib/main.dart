import "dart:convert";
import 'dart:html';
import "package:flutter/services.dart";
import "package:flutter/material.dart";
import 'login.dart';
import "questions.dart";
import 'makepack.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:developer';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'globals.dart' as globals;

void main() async{
  //initialize Awesome Notifications
  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
      'resource://drawable/res_app_icon',
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
  );

  //check permissions for notification access
  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    Future<PermissionStatus> permissionStatus =
    if (!isAllowed) {
      log("notifications not allowed");

      // This is just a basic example. For real apps, you must show some
      // friendly dialog box before call the request method.
      // This is very important to not harm the user experience
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });



  await Hive.initFlutter();
  Hive.registerAdapter(HivePackAdapter());
  Hive.registerAdapter(HiveQuestionAdapter());
  Hive.registerAdapter(HiveAnswerAdapter());



  runApp(MyApp());
}




class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context){

    AwesomeNotifications().actionStream.listen(
            (ReceivedNotification receivedNotification){
              log("event recieved");
              log(receivedNotification.id.toString());
        }
    );

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

  var _result;

  @override
  void initState() {
    loadPacks().then((result) {
      setState(() {
        _result = result;
      });

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
            height: 600,
            child: _result,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sendNotification();
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreatePack(pack: HivePack(title: "<NewPack>",  questions: [],))));

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
  late ListView _result;
  @override
  void initState(){
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
  displayPacks = [];

  Box box = await Hive.openBox("Globals");

  if(box.get("titles") == null){
    log("titles were null when loading");
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: 100,
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
      PackDisplay pck = PackDisplay(name: pack.title, hivePack: pack);
      displayPacks.add(pck);
    });

    log("length of widgets when returning listview");
    log(displayPacks.length.toString());
    return ListView(
      scrollDirection: Axis.vertical,
      children: displayPacks,
    );
  }
}


