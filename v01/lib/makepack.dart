//import 'dart:convert';
//import "dart:io";
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udemy1/main.dart';
import 'dart:developer';
import 'globals.dart' as globals;


part "makepack.g.dart";

//in display pack on delete button pass in parent as parameter then create refresh function in papent and call from child.





//List<HiveQuestion> questions = [];
List<Question> questions = [];
TextEditingController titleController = TextEditingController();

List<String> titles = [];


void setQuestions(HivePack? pack) async{
  if(!(pack == null)){
    questions = [];
    pack.questions.forEach((question) {
      Question newQst = Question(cardNo: question.cardNo, question: question.question, answers: question.answers);
      questions.add(newQst);
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
    if (!(widget.pack == null)) {
      setQuestions(widget.pack);
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
      body: ListView(children: questions),
      // add items to the to-do list
      floatingActionButton:Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    questions.add(Question(cardNo: 0, question: "null", answers: [HiveAnswer(text: "Text", correct: false), HiveAnswer(text: "Text", correct: false), HiveAnswer(text: "Text", correct: false)],));
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
                  HiveAnswer a1;
                  HiveAnswer a2;
                  HiveQuestion newQuestion;
                  HiveAnswer a3;
                  questions.forEach((question) => {
                    a1 = HiveAnswer(text: question.ans1Cont.text,correct: question.a1corr),
                    log(question.ans1Cont.text),
                    a2 = HiveAnswer(text: question.ans2Cont.text,correct: question.a2corr),
                    a3 = HiveAnswer(text: question.ans3Cont.text,correct: question.a3corr),
                    newQuestion = HiveQuestion(cardNo: cardNo, question: question.qstCont.text, answers: [a1, a2, a3]),
                    Qst.add(newQuestion),
                    cardNo += 1
                  });

                  HivePack pck = HivePack(title: titleController.text, questions: Qst);
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
                    log("title not null in makepack");
                    log(_titleList.length.toString());
                  }
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
                  }else{
                    log("pack deleted");
                    log(pack.title);
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
  HivePack({required this.title, required this.questions}) : super();
  @HiveField(11)
  final String title;
  @HiveField(12)
  final List<HiveQuestion> questions;
}

@HiveType(typeId: 20)
class HiveQuestion extends HiveObject{
  HiveQuestion(
      {required this.cardNo, required this.question, required this.answers})
      : super();
  @HiveField(21)
  final int cardNo;
  @HiveField(22)
  final String question;
  @HiveField(23)
  final List<HiveAnswer> answers;
}

@HiveType(typeId: 30)
class HiveAnswer extends HiveObject{
  HiveAnswer({required this.text, required this.correct}) : super();
  @HiveField(31)
  final String text;
  @HiveField(32)
  final bool correct;
}




class Question extends StatefulWidget{
  Question({required this.cardNo, required this.question, required this.answers}) : super();
  final int cardNo;
  final String question;
  final List<HiveAnswer> answers;
  final TextEditingController qstCont = TextEditingController();
  final TextEditingController ans1Cont = TextEditingController();
  final TextEditingController ans2Cont = TextEditingController();
  final TextEditingController ans3Cont = TextEditingController();
  bool a1corr = false;
  bool a2corr = false;
  bool a3corr = false;



  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question>{

  @override
  void initState(){
    super.initState();
    widget.qstCont.text = widget.question;
    widget.ans1Cont.text = widget.answers[0].text;
    widget.ans2Cont.text = widget.answers[1].text;
    widget.ans3Cont.text = widget.answers[2].text;
    widget.a1corr = widget.answers[0].correct;
    widget.a2corr = widget.answers[1].correct;
    widget.a3corr = widget.answers[2].correct;
  }


  @override
  Widget build(context){
    return Material(
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
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.425,
                child: TextField(
                  controller: widget.qstCont,
                  style: TextStyle(
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.2),
              child: Checkbox(
                value: widget.a1corr,
                onChanged: (bool? value){
                  setState(() {
                    if (value = true){
                      widget.a1corr = true;
                    }else{
                      widget.a1corr = false;
                    }
                  });
                },
              ),
            ),
            Align(
              alignment: FractionalOffset(0.9, 0.2),
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.425,
                child: TextField(
                  controller: widget.ans1Cont,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      hintText: "Answer 1",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.5),
              child: Checkbox(
                value: widget.a2corr,
                onChanged: (bool? value){
                  setState(() {
                    if (value = true){
                      widget.a2corr = true;
                    }else{
                      widget.a2corr = false;
                    }
                  });
                },
              ),
            ),
            Align(
              alignment: FractionalOffset(0.9, 0.5),
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.425,
                child: TextField(
                  controller: widget.ans2Cont,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      hintText: "Answer 2",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.8),
              child: Checkbox(
                value: widget.a3corr,
                onChanged: (bool? value){
                  setState(() {
                    if (value = true){
                      widget.a3corr = true;
                    }else{
                      widget.a3corr = false;
                    }
                  });
                },
              ),
            ),
            Align(
              alignment: FractionalOffset(0.9, 0.8),
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.425,
                child: TextField(
                  controller: widget.ans3Cont,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      hintText: "Answer 3",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



