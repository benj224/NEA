
import 'dart:math';

import "package:flutter/material.dart";
import 'makepack.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer';
import 'package:awesome_notifications/awesome_notifications.dart';
import "package:cron/cron.dart";

import 'globals.dart' as globals;


///use a chron to schedule next days notifications every day at midnight
///run only on first run
///maby look at animated instuctions?
///add statistics to questions and packs
///
///notification access not setting true

void main() async{

  bool _notificationsAllowed = false;

  void sendNotification(int hour, int minute, String question, String ans1, String ans2, String ans3) async {

    if(!globals.notificationsAllowed){
      await globals.requestUserPermission();
    }

    if(!globals.notificationsAllowed){
      return;
    }
    AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 100,
          channelKey: "awesome_notifications",
          title: question,
          body: "test",
          //notificationLayout: NotificationLayout.BigPicture,
          //largeIcon: "https://avidabloga.files.wordpress.com/2012/08/emmemc3b3riadeneilarmstrong3.jpg",
          //bigPicture: "https://www.dw.com/image/49519617_303.jpg",
          showWhen: true,
        ),
        actionButtons: [
          NotificationActionButton(
            key: "a1",
            label: ans1,
            enabled: true,
            buttonType: ActionButtonType.Default,
          ),
          NotificationActionButton(
            key: "a2",
            label: ans2,
            enabled: true,
            buttonType: ActionButtonType.Default,
          ),
          NotificationActionButton(
            key: "a3",
            label: ans3,
            enabled: true,
            buttonType: ActionButtonType.Default,
          )
        ],
        schedule: NotificationCalendar.fromDate(date: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, hour, minute))
    );
  }

  globals.sendNote = sendNotification;

  void scheduleQuestions() async{
    var rng = Random();
    Box box = await Hive.openBox("Globals");
    List<dynamic> pcks = box.get("packs");
    List<HivePack> _packList = pcks.cast<HivePack>();
    _packList.forEach((pack) {
      List<HiveQuestion> qstList = [];
      pack.questions.forEach((question) {
        int score = 0;
        for(int i = 0; i > 6; i++){
          score += question.pastAnswers[i] * 6;
        }
        for(int n = 0; n > score; n++){
          qstList.add(question);
        }
      });
      double hourIndex = 14/pack.frequency;
      for(int x = 0; x > pack.frequency; x++){
        HiveQuestion qst = qstList.removeAt(rng.nextInt(qstList.length));

        double lower = 60 * 7 + hourIndex * x * 60;
        double upper = 60 * 7 + hourIndex * (x + 1) * 60;
        int diff = rng.nextInt((upper-lower).toInt());
        int minutes = diff + lower.toInt();
        double time = minutes/60;
        int hours = time.toInt();
        int mins = 0;
        int? min = int.tryParse(time.toString().split(".")[1]);
        if(min is int){
          int? minn = int.tryParse(min.toString().substring(0, 2));
          mins = minn!;
        }
        sendNotification(hours, mins, qst.question, qst.answers[0].text, qst.answers[1].text, qst.answers[2].text);
      }
    });
  }

  var cron = new Cron();
  cron.schedule(Schedule.parse("* 1 * * *"), () async {
    scheduleQuestions();
  });
  

  //initialize Awesome Notifications
  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
    null,
      [
        NotificationChannel(
            channelKey: 'awesome_notifications',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
  );



  await Hive.initFlutter();
  Hive.registerAdapter(HivePackAdapter());
  Hive.registerAdapter(HiveQuestionAdapter());
  Hive.registerAdapter(HiveAnswerAdapter());




  runApp(MyApp());
}







class MyApp extends StatelessWidget{


  List<int> correct(List<int> past){
    for( var i = 1; i >= 5; i ++){
      past[i-1] = past[i];
    }
    past[5] = 1;

    return past;
    ///for loop
  }

  List<int> incorrect(List<int> past){
    for( var i = 1; i >= 5; i ++){
      past[i-1] = past[i];
    }
    past[5] = 0;

    return past;
  }

  void notificationStream() async{
    Box box = await Hive.openBox("Globals");
    List<dynamic> pcks = box.get("packs");

    late HivePack relevantPack;
    late HiveQuestion relevantQuestion;

    AwesomeNotifications().actionStream.listen((event){


      List<HivePack> hivePacks = pcks.cast<HivePack>();
      hivePacks.forEach((element) {
        if(element.title == event.payload!["packname"]){
          relevantPack = element;
        }
      });

      List<HiveQuestion> hiveQuestions = [];
      relevantPack.questions.forEach((element) {
        if(element.question == event.payload!["question"])
          relevantQuestion = element;
      });


      if(event.buttonKeyInput == "a1"){
        if (relevantQuestion.answers[0].correct){
          relevantQuestion.pastAnswers = correct(relevantQuestion.pastAnswers);
          relevantQuestion.attempted += 1;
          relevantQuestion.correct += 1;
        }
      }if(event.buttonKeyInput == "a2"){
        if (relevantQuestion.answers[1].correct){
          relevantQuestion.pastAnswers = correct(relevantQuestion.pastAnswers);
          relevantQuestion.attempted += 1;
          relevantQuestion.correct += 1;
        }
      }if(event.buttonKeyInput == "a3"){
        if (relevantQuestion.answers[2].correct){
          relevantQuestion.pastAnswers = correct(relevantQuestion.pastAnswers);
          relevantQuestion.attempted += 1;
          relevantQuestion.correct += 1;
        }
      }else{
        relevantQuestion.pastAnswers = incorrect(relevantQuestion.pastAnswers);
        relevantQuestion.attempted += 1;
      }


    }
    );


  }

  @override
  void initState(){
    notificationStream();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      globals.notificationsAllowed = isAllowed;
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

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

  Future<void> requestUserPermission() async {
    showDialog(
        context: context,
        builder: (_) =>
            AlertDialog(
              title: Text("Notification Access Required"),
              content: Text("This App required access to notificatins to function"),
              actions: <Widget>[
                TextButton(
                    onPressed: () async {
                      Navigator.pop(context, "Cancel");
                      await AwesomeNotifications().requestPermissionToSendNotifications();
                      globals.notificationsAllowed = await AwesomeNotifications().isNotificationAllowed();
                      setState(() {
                        globals.notificationsAllowed = globals.notificationsAllowed;
                      });
                    },
                    child: Text("Cancel")
                ),
                TextButton(
                    onPressed: () => Navigator.pop(context, "OK"),
                    child: Text("OK")
                )
              ],
            )

    );
  }

  var _result;

  @override
  void initState() {
    //check permissions for notification access
    requestUserPermission();
    globals.requestUserPermission = requestUserPermission;

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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreatePack(pack: HivePack(title: "<NewPack>",  questions: [], enabled: true, frequency: 2))));
        },
      ),
    );
  }
}


class PackDisplay extends StatefulWidget{
  PackDisplay({required this.name, required this.hivePack, required this.enabled}) : super();
  final String name;
  final HivePack hivePack;
  bool enabled;

  @override
  _PackDisplayState createState() => _PackDisplayState();
}

class _PackDisplayState extends State<PackDisplay>{

  MaterialColor isEnabled(){
    if(widget.enabled){
      return Colors.red;
    }else{
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onLongPress: (){
        setState(() {
          widget.enabled = !(widget.enabled);
          widget.hivePack.enabled = !(widget.hivePack.enabled);
        });
      },
      child: Material(
        elevation: 5,
        color: isEnabled(),
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
Future<ListView> loadPacks() async{
  displayPacks = [];

  Box box = await Hive.openBox("Globals");

  if(box.get("titles") == null){
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
                          ///open the pack creator, then do this for editing packs.
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
      PackDisplay pck = PackDisplay(name: pack.title, hivePack: pack, enabled: true,);
      displayPacks.add(pck);
    });

    return ListView(
      scrollDirection: Axis.vertical,
      children: displayPacks,
    );
  }
}


