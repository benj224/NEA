import 'package:flutter/material.dart';

class CreatePack extends StatefulWidget{

  @override
  _CreatePackState createState() => _CreatePackState();
}

class _CreatePackState extends State<CreatePack>{
  final List<Card> cards = <Card>[];//GetCards
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(context){
    return Scaffold(
      //prehaps make page title same as test pack title
    );
  }
  void addCard(int cardNo, String question, double score){
    //add card with answers initialized to null and then edit after
  }
}



class Card extends StatefulWidget{
  Card({required this.cardNo, required this.question, required this.score, required this.answers}) : super();
  final int cardNo;
  final String question;
  final int score;
  final List<Answer> answers;

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card>{
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
              alignment: FractionalOffset(0.1, 0.2),
              child: Text("Card No: {widget.cardNo}"),
            ),
            Align(
              alignment: FractionalOffset(0.1, 0.8),
              child: Text("Question: {widget.question}")
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.2),
              child: Text("Answers:\n\t{widget.answers[0].text} {widget.answers[0].correct}\n\t{widget.answers[1].text} {widget.answers[1].correct}\n\t{widget.answers[2].text} {widget.answers[2].correct}"),
            )
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
