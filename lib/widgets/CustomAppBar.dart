import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlydesign/utils/constant/constant.dart';

class CustomAppBar extends AppBar {
  final Widget leading;
  final List<Widget> actions;
  final String appTitle;
  final TextStyle style;

  CustomAppBar({
    this.appTitle,
    this.actions,
    this.leading,
    this.style,
  }) : super(
          backgroundColor: kWhiteColor,
          actionsIconTheme: IconThemeData(color: kBlackColor),
          iconTheme: IconThemeData(
            color: kBlackColor,
          ),
          title: Text(
            appTitle,
            style: style,
          ),
          elevation: 0.0,
          bottomOpacity: 0.0,
          actions: actions,
        );
}

class CustomIosAppBar extends CupertinoNavigationBar {
  final Widget leading;
  final String appTitle;
  final TextStyle style;
  final Widget trailing;

  CustomIosAppBar({
    this.leading,
    this.appTitle,
    this.style,
    this.trailing,
  }) : super(
          backgroundColor: kWhiteColor,
          leading: leading,
          middle: Text(
            appTitle,
            style: style,
          ),
          trailing: trailing,
        );
}
