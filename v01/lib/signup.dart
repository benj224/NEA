import 'package:flutter/material.dart';
import "package:udemy1/main.dart";

class SignUp extends StatefulWidget{
  SignUp({required Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context){
    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15, 20, 15),
          hintText: "Name",
_      ),
    );
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
      ),
    );
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: style.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold
          ),),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155,
                ),
                SizedBox(height: 20),
                nameField,
                SizedBox(height: 25),
                emailField,
                SizedBox(height: 25),
                passwordField,
                SizedBox(height: 15),
                signUpButton,
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}