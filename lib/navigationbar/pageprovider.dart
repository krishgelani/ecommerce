import 'package:flutter/cupertino.dart';

class pageProvider extends ChangeNotifier
{
  int i = 0;
  void change(int index)
  {
    i = index;
    notifyListeners();
  }
}