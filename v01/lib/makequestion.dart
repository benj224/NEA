import "package:flutter/material.dart";
import 'makepack.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer';




class MakeQuestion extends StatefulWidget{
  MakeQuestion({required this.question}):super();
  final HiveQuestion question;

  final TextEditingController qstCont = TextEditingController();
  final TextEditingController ans1Cont = TextEditingController();
  final TextEditingController ans2Cont = TextEditingController();
  final TextEditingController ans3Cont = TextEditingController();
  bool a1corr = false;
  bool a2corr = false;
  bool a3corr = false;
  @override
  _MakeQuestionState createState() => _MakeQuestionState();
}




class _MakeQuestionState extends State<MakeQuestion> {

  @override
  void initState(){
    super.initState();

  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Question Cretor"),
      ),

      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: FractionalOffset(0.4, 0.4),
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.425,
                child: TextField(
                  controller: widget.qstCont,///load
                  style: TextStyle(
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset(0.6, 0.4),
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
              alignment: FractionalOffset(0.6, 0.6),
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
              alignment: FractionalOffset(0.6, 0.8),
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
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          FloatingActionButton(
              onPressed: ///done
          ),
          FloatingActionButton(
            onPressed: ///delete question,
          )
        ],
      ),
    );

  }
}
