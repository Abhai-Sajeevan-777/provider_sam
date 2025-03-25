import 'package:flutter/material.dart';

class ControllerScreen with ChangeNotifier {
  int count = 100;

  void incrementcounter() {
    count++;
    notifyListeners();
  }
}
