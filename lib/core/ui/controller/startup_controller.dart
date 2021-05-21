import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlydesign/utils/constant/constant.dart';

class StartUpController extends GetxController {
  List<IconData> _iconList = [
    Icons.home,
    Icons.watch_later,
    Icons.ac_unit,
    Icons.account_balance_wallet,
    Icons.account_circle_sharp,
    Icons.agriculture,
    Icons.settings,
    Icons.money,
  ];
  List<IconData> get getIconsList => [..._iconList];
  var _isSwitch = false.obs;

  bool get isSwitch => _isSwitch.value;

  void setSwitchValue(bool val)
  {
    _isSwitch.value = val;
    if(_isSwitch.value)
      {
        Constant.showSuccessSnackBar('Switch value changed!');
      }
  }





}
