import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  String answer;
  Function nextQuestion;
  AnswerButton(this.nextQuestion,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
     
      child: RaisedButton(
        onPressed: nextQuestion,
        child: Text(answer),
      ),
    );
  }
}
