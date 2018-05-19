import 'package:flutter/material.dart';
import 'drag_source.dart';
import 'drag_target.dart';
import 'model.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  BoxDataModel sourceDataModel = new BoxDataModel(Colors.blue, "DragSourceBox");
  BoxDataModel targetDataModel = new BoxDataModel(Colors.grey, "DragTargetBox");

  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("MyApp Bar"),
        ),
        body: new Column(
          children: <Widget>[
            new DragSourceBox(sourceDataModel),
            new DragBoxTarget(targetDataModel),
          ],
        ),
      ),
    );
  }
}
