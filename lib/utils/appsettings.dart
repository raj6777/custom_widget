import 'package:custom_widget/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appsettings extends ChangeNotifier{
  Color _appColor=Colors.teal;
  Color get appColor=>_appColor;
  void updateColor(int index){
    _appColor = constants.colors[index];
    notifyListeners();
  }
}
