import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlydesign/utils/responsive/orientation_layout.dart';
import 'package:onlydesign/utils/responsive/screen_type_layout.dart';
import 'register_view_desktop.dart';
import 'register_view_mob.dart';
import 'register_view_tab.dart';

class RegisterView extends StatelessWidget {
  static const routeNamed = '/Register-view';
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: RegisterViewMobPortrait(),
        landscape: RegisterViewMobLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: RegisterViewTabPortrait(),
        landscape: RegisterViewTabLandscape(),
      ),
      desktop: RegisterViewDesktop(),
    );
  }
}
