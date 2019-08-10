import 'package:flutter/material.dart';
import './Text.dart';
import 'answerbutton.dart';
import 'button.dart';


class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String,Object>> questions;
  final Function nextQuestion;
  final Function buttonTextChange;
  final int n;

  Quiz({
    @required this.questionIndex,
    @required this.buttonTextChange,
    @required this.nextQuestion,
    @required this.questions,
    @required this.n,
   

  });

  @override

  Widget build(BuildContext context) {
    return Column(children: [
        BelowText(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
          return AnswerButton( () =>  nextQuestion(answer['score']) , answer['text']);
        }).toList()
         ,Button(buttonTextChange,n),
         
        ]);
  }
}