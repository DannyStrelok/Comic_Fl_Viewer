import 'package:flutter/material.dart';

class AutheticationService with ChangeNotifier {

  bool _authenticating = false;

  bool get authenticating => _authenticating;

  set authenticating(bool value) {
    _authenticating = value;
    notifyListeners();
  }

}