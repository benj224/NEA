//import 'dart:convert';
//import "dart:io";
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udemy1/main.dart';
import 'package:udemy1/makequestion.dart';
import 'dart:developer';
import 'globals.dart' as globals;
import 'package:awesome_notifications/awesome_notifications.dart';

///fix notification call

part "makepack.g.dart";

///make on tap function for questions wich deletes them and sends to make question with the question in.


TextEditingController titleController = TextEditingController();

List<String> titles = [];


void setQuestions(HivePack? pack) async{
  HivePack NNPK = pack!;
  if(!(pack == null)){
    if(!(pack.questions.isEmpty))
    pack.questions.forEach((question) {
      Question newQst = Question(cardNo: question.cardNo, question: question.question, answers: question.answers, hiveQuestion: question,);
      globals.questions.add(newQst);
      log("loaded question");
    });
  }
}



class CreatePack extends StatefulWidget{
  CreatePack({required this.pack}) :super();
  final HivePack pack;
  @override
  _CreatePackState createState() => _CreatePackState();
}

class _CreatePackState extends State<CreatePack>{//GetCards
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (!(widget.pack == null)) {///wtf is this cant be null
      setQuestions(widget.pack);
    }
    if(globals.newQuestion != null){
      HiveQuestion NNqt = globals.newQuestion!;
      globals.questions.add(Question(cardNo: 0, hiveQuestion: NNqt, answers: NNqt.answers, question: NNqt.question,));
      globals.newQuestion = null;
      log(globals.questions.length.toString());
    }
  }


  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(title: TextField(
        controller: titleController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            hintText: "Title",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
        ),
      ),),
      body: ListView(children: globals.questions),
      // add items to the to-do list
      floatingActionButton:Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    /// add new page for creating question instead.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MakeQuestion(question: HiveQuestion(question: "<question>", cardNo: 0, answers: [
                      HiveAnswer(text: "<Ans1>", correct: false),
                      HiveAnswer(text: "<Ans2>", correct: false),
                      HiveAnswer(text: "<Ans3>", correct: false),
                    ], attempted: 0, correct: 0, pastAnswers: [1,1,1,1,1,1], hivePack: widget.pack),)));
                  });
                },
                tooltip: 'Add Item',
                child: Icon(Icons.add)),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
                onPressed: () async{

                  List<HiveQuestion> Qst = [];
                  int cardNo = 0;
                  globals.questions.forEach((question) => {
                    Qst.add(question.hiveQuestion),
                    cardNo += 1
                  });

                  HivePack pck = HivePack(title: titleController.text, questions: Qst, enabled: true, frequency: 2);
                  Box box = await Hive.openBox("Globals");
                  if(!(box.get("editbox") == null)){
                    List<dynamic> pcks = box.get("packs");
                    HivePack? removePack = null;
                    List<HivePack> newPck = [];
                    pcks.forEach((pack) {
                      if(!(pack == box.get("editbox"))){
                        newPck.add(pack);
                      }
                    });
                    box.delete("packs");
                    box.put("packs", newPck);
                  }

                  if(box.get("packs") == null){
                    List<HivePack> PackList = [pck];
                    box.put("packs", PackList);
                  }else{
                    List PackList = box.get("packs");
                    List<HivePack> _packList = PackList.cast<HivePack>();
                    _packList.add(pck);
                    box.delete("packs");
                    await box.put("packs", _packList);
                  }


                  if(box.get("titles") == null){
                    List<String> _titleList = [titleController.text];
                    box.put("titles", _titleList);
                  }else{
                    List titleList = box.get("titles");
                    List<String> _titleList = titleList.cast<String>();
                    _titleList.add(titleController.text);
                    box.delete("titles");
                    await box.put("titles", _titleList);
                  }
                  globals.questions = [];

                  ///schedule questions
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                tooltip: 'Done',
                child: Icon(Icons.offline_pin)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              onPressed: () async{

                Box box = await Hive.openBox("Globals");
                List<dynamic> pcks = box.get("packs");
                List<HivePack> newPcks = [];
                List<String> newTitles = [];
                //List<Widget> newDisplayPacks = [];
                pcks.forEach((pack) {
                  log(pack.title);
                  log(widget.pack.title);
                  if(!(pack.title == widget.pack.title)){
                    newPcks.add(pack);
                    newTitles.add(pack.title);
                    //newDisplayPacks.add(PackDisplay(name: pack.title, hivePack: pack));
                  }
                });
                box.delete("packs");
                box.put("packs", newPcks);
                box.delete("titles");
                box.put("titles", newTitles);

                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                },
            ),
          )
        ],
      )
    );
  }
  void _addCard(int cardNo, String question, double score){
    //add card with answers initialized to null and then edit after
  }
}

@HiveType(typeId: 10)
class HivePack extends HiveObject{
  HivePack({required this.title, required this.questions, required this.enabled, required this.frequency}) : super();
  @HiveField(11)
  final String title;
  @HiveField(12)
  final List<HiveQuestion> questions;
  @HiveField(13)
  bool enabled;
  @HiveField(14)
  int frequency;



}

@HiveType(typeId: 20)
class HiveQuestion extends HiveObject{
  HiveQuestion(
      {required this.cardNo, required this.question, required this.answers, required this.attempted, required this.correct, required this.pastAnswers, required this.hivePack})
      : super();
  @HiveField(21)
  int cardNo;///probs change this
  @HiveField(22)
  String question;
  @HiveField(23)
  List<HiveAnswer> answers;
  @HiveField(24)
  int attempted;
  @HiveField(25)
  int correct;
  @HiveField(26)
  List<int> pastAnswers;
  @HiveField(27)
  final HivePack hivePack;
}

@HiveType(typeId: 30)
class HiveAnswer extends HiveObject{
  HiveAnswer({required this.text, required this.correct}) : super();
  @HiveField(31)
  String text;
  @HiveField(32)
  bool correct;
}




class Question extends StatefulWidget{
  Question({required this.cardNo, required this.question, required this.answers, required this.hiveQuestion}) : super();
  final HiveQuestion hiveQuestion;
  final int cardNo;
  final String question;
  List<int> pastAnswers = [1,1,1,1,1,1];
  final List<HiveAnswer> answers;
  double progress = 0;
  bool enabled = true;




  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question>{
  MaterialColor confidence(){
    if(!widget.enabled){
      return Colors.grey;
    }
    int noCorrect = 0;
    widget.pastAnswers.forEach((element) {
      noCorrect += 1;
    });

    if(noCorrect <= 4){
      return Colors.red;
    }if(noCorrect <= 2){
      return Colors.orange;
    }

    return Colors.green;
  }

  void updateProgress(){
    int correct = 0;
    widget.pastAnswers.forEach((element) {
      correct += element;
    });
    widget.progress = correct/6;
  }


  void schedule(){
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 100,
        channelKey: "awesome_notifications",
        title: "Question:",
        body: widget.question,
        //notificationLayout: NotificationLayout.BigPicture,
        //largeIcon: "https://avidabloga.files.wordpress.com/2012/08/emmemc3b3riadeneilarmstrong3.jpg",
        //bigPicture: "https://www.dw.com/image/49519617_303.jpg",
        showWhen: true,
        payload: {
          "packname":widget.hiveQuestion.hivePack.title,
          "question":widget.question
        }
      ),
      actionButtons: [
        NotificationActionButton(
          key: "a1",
          label: widget.answers[0].text,
          enabled: true,
          buttonType: ActionButtonType.Default,
        ),
        NotificationActionButton(
          key: "a2",
          label: widget.answers[1].text,
          enabled: true,
          buttonType: ActionButtonType.Default,
        ),
        NotificationActionButton(
          key: "a3",
          label: widget.answers[2].text,
          enabled: true,
          buttonType: ActionButtonType.Default,
        )
      ],
    );
  }

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(context){
    return GestureDetector(
      onLongPress: () {
        setState(() {
          widget.enabled = !widget.enabled;
        });
      },
      onDoubleTap: (){
        ///push to question creator with question
        Navigator.push(context, MaterialPageRoute(builder: (context) => MakeQuestion(question: widget.hiveQuestion)));
        ///delete question
        globals.questions.remove(widget);
      },
      child: Material(
        color: confidence(),
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: SizedBox(
          height: 100,
          child: Stack(
            children: [
              Align(
                alignment: FractionalOffset(0.05, 0.2),
                child: Text(widget.question),
              ),


              Align(
                alignment: FractionalOffset(0.5, 0.2),
                child: Checkbox(
                  value: widget.answers[0].correct,
                  onChanged: (bool? value){},
                ),
              ),
              Align(
                alignment: FractionalOffset(0.9, 0.2),
                child: Text(widget.answers[0].text),
              ),


              Align(
                alignment: FractionalOffset(0.5, 0.5),
                child: Checkbox(
                  value: widget.answers[1].correct,
                  onChanged: (bool? value){},
                ),
              ),
              Align(
                  alignment: FractionalOffset(0.9, 0.5),
                  child: Text(widget.answers[1].text)
              ),


              Align(
                alignment: FractionalOffset(0.5, 0.8),
                child: Checkbox(
                    value: widget.answers[2].correct,
                    onChanged: (bool? value){}
                ),
              ),
              Align(
                  alignment: FractionalOffset(0.9, 0.8),
                  child: Text(widget.answers[2].text)
              ),
            ],
          ),
        ),
      ),
    );
  }
}



