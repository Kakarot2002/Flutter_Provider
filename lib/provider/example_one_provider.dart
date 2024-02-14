import 'package:flutter/foundation.dart';

// ignore: camel_case_types
class exampleOneProvider with ChangeNotifier {
  double _value = 1.0;

  double get value => _value;

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
