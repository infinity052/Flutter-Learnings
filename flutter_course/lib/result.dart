import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  String get resultPhrase {
    String result = 'You suck';
    if (totalScore > 5 && totalScore < 10) {
      result = 'Yeah youre alright';
    } else if (totalScore > 10) {
      result = 'You Awesome dude!!';
    }
    return result;
  }

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,
      ),
      )
    );
  }
}
