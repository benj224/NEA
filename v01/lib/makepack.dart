//import 'dart:convert';
//import "dart:io";
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:hive_generator/hive_generator.dart';

//make classes without flutter objects and classes with flutter and on save for pack edditor save values to classes and then commit to box.

//maby make class for list of cards to store in hive.

part "makepack.g.dart";

//load box in main
//save list of cards to box and use to create widgets prehaps only commit ot box when user is finnished on page instead fo sequentialy



List<Question> questions = [];
TextEditingController titleController = TextEditingController();

class CreatePack extends StatefulWidget{

  @override
  _CreatePackState createState() => _CreatePackState();
}

class _CreatePackState extends State<CreatePack>{//GetCards
  final TextEditingController _textEditingController = TextEditingController();

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
                    questions.add(Question(cardNo: 0, question: "null"));
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
                    a2 = HiveAnswer(text: question.ans2Cont.text,correct: question.a2corr),
                    a3 = HiveAnswer(text: question.ans3Cont.text,correct: question.a3corr),
                    newQuestion = HiveQuestion(cardNo: cardNo, question: question.question, answers: [a1, a2, a3]),
                    Qst.add(newQuestion),
                    cardNo += 1
                  });

                  HivePack pck = HivePack(title: titleController.text, questions: Qst);
                  await Hive.openBox(titleController.text);
                  Box<dynamic> box = Hive.box(titleController.text);
                  box.put("pack", HivePack);
                  // todo add pack title, create pack class and add to flutter box
                },
                tooltip: 'Done',
                child: Icon(Icons.offline_pin)),
          )
        ],
      )
    );
  }
  void _addCard(int cardNo, String question, double score){
    //add card with answers initialized to null and then edit after
  }
}

@HiveType(typeId: 0)
class HivePack extends HiveObject{
  HivePack({required this.title, required this.questions}) : super();
  @HiveField(5)
  final String title;
  @HiveField(6)
  final List<HiveQuestion> questions;
}

@HiveType(typeId: 1)
class HiveQuestion extends HiveObject{
  HiveQuestion(
      {required this.cardNo, required this.question, required this.answers})
      : super();
  @HiveField(1)
  final int cardNo;
  @HiveField(2)
  final String question;
  @HiveField(4)
  List<HiveAnswer>? answers = [];
}

@HiveType(typeId: 2)
class HiveAnswer extends HiveObject{
  HiveAnswer({required this.text, required this.correct}) : super();
  @HiveField(1)
  final String text;
  @HiveField(2)
  final bool correct;
}




class Question extends StatefulWidget{
  Question({required this.cardNo, required this.question}) : super();
  final int cardNo;
  final String question;
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
              child: Checkbox(
                value: widget.a1corr,
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
            Align(
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
          ],
        ),
      ),
    );
  }
}



