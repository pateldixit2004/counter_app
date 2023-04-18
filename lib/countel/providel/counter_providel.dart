import 'package:flutter/cupertino.dart';

class ProviderConter extends ChangeNotifier
{
  int no=1;
  void add()
  {
    no++;
    notifyListeners();
  }
  void sub()
  {
    no--;
    notifyListeners();
  }
  void mut2()
  {
    no=no*2;
    notifyListeners();
  }
  void mut3()
  {
    no=no*3;
    notifyListeners();
  }
  void reset()
  {
    no=1;
    notifyListeners();
  }
}