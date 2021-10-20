import 'package:flutter/material.dart';

class CreatePack extends StatefulWidget{

  @override
  _CreatePackState createState() => _CreatePackState();
}

class _CreatePackState extends State<CreatePack>{
  final List<Question> questions = <Question>[Question(cardNo: 0, question: "null", score: 5, answers: <Answer>[])];//GetCards
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(title: const Text(' List')),
      body: ListView(children: questions),
      // add items to the to-do list
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              questions.add(Question(cardNo: 0, question: "null", score: 5, answers: <Answer>[]));
            });
          },
          tooltip: 'Add Item',
          child: Icon(Icons.add)),
    );
  }
  void _addCard(int cardNo, String question, double score){
    //add card with answers initialized to null and then edit after
  }
}




class Question extends StatefulWidget{
  Question({required this.cardNo, required this.question, required this.score, required this.answers}) : super();
  final int cardNo;
  final String question;
  final int score;
  final List<Answer> answers;

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


class Answer{
  Answer({required this.text, required this.correct}) : super();
  final String text;
  final bool correct;
}
