import 'package:flutter/material.dart';
import 'model.dart';

class DragSourceBox extends StatefulWidget {
  final BoxDataModel _sourceBoxData;

  DragSourceBox(this._sourceBoxData);

  @override
  _DragSourceState createState() => new _DragSourceState();
}

class _DragSourceState extends State<DragSourceBox> {
  @override
  Widget build(BuildContext context) {
    return new Draggable(
      maxSimultaneousDrags: 1,
      data: widget._sourceBoxData,
      feedback: new Container(
        width: 100.0,
        height: 100.0,
        color: widget._sourceBoxData.boxColor.withOpacity(0.25),
        child: new Center(
            child: new Text(widget._sourceBoxData.content,
                style: new TextStyle(fontSize: 8.0))),
      ),
      child: new Container(
        width: 100.0,
        height: 100.0,
        color: widget._sourceBoxData.boxColor,
        child: new Center(child: new Text(widget._sourceBoxData.content)),
      ),
    );
  }
}
