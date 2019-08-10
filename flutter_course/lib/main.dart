import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  int totalScore=0;
  int questionIndex = 0;
  var questions = [
    {
      'questionText': 'How old are you?',
      'answers': [{'text' : 'less than 10', 'score': 5}
                ,{'text': '12-15', 'score': 3}
                ,{'text':'15-18','score': 3},
                { 'text': 'above 18', 'score': 4}],
    },
    {
      'questionText': 'How much hours do you spend on Instagram?',
      'answers': [{'text': 'less than 10', 'score': 5},
                 {'text': '12-15' , 'score': 4},
                 {'text': '15-18', 'score': 5}, 
                 {'text': 'above 18' ,'score': 6}],
    },
    {
      'questionText': 'How much do you like this app?',
      'answers': [{'text':'little bit', 'score': 4},
                  {'text':'not at all', 'score': 5}, 
                  {'text':'very much', 'score': 6},
                  {'text':'Obsessed with it','score':10}],
    },
  ];
  int n = 0;
  void nextQuestion(int score) {
    totalScore+=score;
    setState(() {
      questionIndex++;
    });
  }

  void buttonTextChange() {
    setState(() {
      n++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Flutter Course'),
      ),
      body: questionIndex < questions.length
          ? Quiz(
              buttonTextChange: buttonTextChange,
              n: n,
              nextQuestion: nextQuestion,
              questions: questions,
              questionIndex: questionIndex,
            )
          : Result(totalScore),
    ));
  }
}
