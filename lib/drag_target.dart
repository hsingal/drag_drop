import 'package:flutter/material.dart';
import 'model.dart';

class DragBoxTarget extends StatefulWidget {
  final BoxDataModel _targetBoxData;

  DragBoxTarget(this._targetBoxData);

  @override
  _DragBoxTargetState createState() => new _DragBoxTargetState();
}

class _DragBoxTargetState extends State<DragBoxTarget> {
  BoxDataModel dataModel1, dataModel2;

  void _handlerAccept(BoxDataModel data) {
    setState(() {
      //print(data.boxColor.toString() + "       " + data.content);
      dataModel2 = data;
      print(dataModel2.boxColor.toString() + "  " + dataModel2.content);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataModel2 = widget._targetBoxData;
  }

  @override
  Widget build(BuildContext context) {
    return new DragTarget(
      onAccept: _handlerAccept,
      builder: (BuildContext context, List<BoxDataModel> data,
          List<dynamic> rejectedData) {
        print(data);
        return new Container(
          width: 100.0,
          height: 100.0,
          color: data.isEmpty
              ? widget._targetBoxData.boxColor
              : dataModel2.boxColor,
          child: new Center(
              child: new Text(data.isEmpty
                  ? widget._targetBoxData.content
                  : dataModel2.content)),
        );
      },
    );
  }
}
