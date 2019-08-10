import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final Function buttonTextChange;
  var buttonText=['Press me','You pressed me'];
  int n=0;
  

  Button(this.buttonTextChange,this.n);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(),
              padding: EdgeInsets.all(30.0),
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  buttonTextChange();
                },
                child: Text(buttonText.elementAt(n)),
              )
    );
  }
}