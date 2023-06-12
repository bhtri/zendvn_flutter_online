import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isChecking = false;
  bool get isChecking => _isChecking;

  Future<bool> auth(String email, String pass) async {
    try {
      toggleCheck();

      await Future.delayed(const Duration(seconds: 3));
      bool result = false;
      if (email == 'admin@gmail.com' && pass == '12345678') {
        result = true;
      } else {
        result = false;
      }

      toggleCheck();
      return result;
    } catch (e) {
      return Future.error(Exception(e.toString()));
    }
  }

  void toggleCheck() {
    _isChecking = !_isChecking;
    notifyListeners();
  }
}
