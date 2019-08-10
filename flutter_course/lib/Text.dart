
import 'package:flutter/material.dart';

class BelowText extends StatelessWidget {
  final String text;

  BelowText(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 20,fontFamily: 'LUCIDA HANDWRITING'),
        
        textAlign: TextAlign.center,
        
        
      ),
      width: double.infinity,
      
      
    );
  }
}
