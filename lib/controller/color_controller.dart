import 'package:flutter/material.dart';

class ColorController with ChangeNotifier {
  Color? scbg;
  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.black,
  ];

  void changeColor(int index) {
    scbg = colors[index];
    notifyListeners();
  }
}
