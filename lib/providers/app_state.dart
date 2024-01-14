import 'package:easy_trip/models/path/path.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  List<PathCircuit> paths = [];

  addToPaths(PathCircuit path) {
    paths.add(path);
    notifyListeners();
  }
}
