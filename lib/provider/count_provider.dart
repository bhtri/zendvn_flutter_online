import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increase() {
    _count += 1;
    notifyListeners();
  }

  void decrease() {
    _count -= 1;
    notifyListeners();
  }
}
