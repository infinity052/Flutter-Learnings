import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  void showModalSheet(BuildContext c){
    showModalBottomSheet(context: c, builder: (_) =>Text('yo') );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hi'),),
      body: Column(children: <Widget>[
        FloatingActionButton(onPressed: (){
          showModalSheet(context);

        }, child: Icon(Icons.add),)
      
      ],),
    );
  }
}