import 'dart:convert';
import "dart:io";
import 'package:flutter/material.dart';
import "package:json_annotation/json_annotation.dart";
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_generator/hive_generator.dart';


part 'card.g.dart';

List<Question> questions = [];

class CreatePack extends StatefulWidget{

  @override
  _CreatePackState createState() => _CreatePackState();
}

class _CreatePackState extends State<CreatePack>{//GetCards
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(title: const Text('List')),
      body: ListView(children: questions),
      // add items to the to-do list
      floatingActionButton:Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    questions.add(Question(cardNo: 0, question: "null", score: 5));
                  });
                },
                tooltip: 'Add Item',
                child: Icon(Icons.add)),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
                onPressed: (){
                  ;
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

@HiveType(typeId: 1)
class Question extends StatefulWidget{
  Question({required this.cardNo, required this.question, required this.score, this.answers}) : super();
  @HiveField(1)
  final int cardNo;
  @HiveField(2)
  final String question;
  @HiveField(3)
  final int score;
  @HiveField(4)
  List<Answer>? answers = [];





/*  Map<String, dynamic> toJson() =>
      {
        'cardno': cardNo,
        'question': question,
        'score': score,
        'answers[A]': answers[0].toJson(),
        'answers[B]': answers[1].toJson(),
        'answers[C]': answers[2].toJson(),
      };*/

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
                  style: TextStyle(
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      hintText: "Question",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset(0.9, 0.2),
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.425,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      hintText: "Answer 1",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset(0.9, 0.5),
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.425,
                child: TextField(
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




@HiveType(typeId: 2)
class Answer{
  Answer({required this.text, required this.correct}) : super();
  @HiveField(1)
  final String text;
  @HiveField(2)
  final bool correct;

  Map<String, dynamic> toJson() =>
      {
        'text': text,
        'correct': correct,
      };
}


SavePackToJSON(){

  String json = jsonEncode(_$QuestionToJson(questions[0]));
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/counter.txt');
}

Future<File> writeCounter(int counter) async {
  final file = await _localFile;

  // Write the file
  return file.writeAsString('$counter');
}