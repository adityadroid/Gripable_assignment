import 'package:flutter/material.dart';

class SubRedditInfoProvider with ChangeNotifier {
  SubRedditInfoProvider({required this.name});
  String name;

  void updateSubRedditName(String newName) {
    name = newName;
    notifyListeners();
  }
}
