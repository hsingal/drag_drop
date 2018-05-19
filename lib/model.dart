import 'package:flutter/material.dart';

class BoxDataModel {
  String _contents;
  Color _boxColor;

  BoxDataModel(this._boxColor, this._contents);

  String get content => _contents;
  Color get boxColor => _boxColor;

  set boxColor(Color _color) {
    _boxColor = _color;
  }

  set content(String data) {
    _contents = data;
  }
}