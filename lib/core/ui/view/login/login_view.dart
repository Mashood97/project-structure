import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlydesign/utils/responsive/orientation_layout.dart';
import 'package:onlydesign/utils/responsive/screen_type_layout.dart';

import 'login_view_desktop.dart';
import 'login_view_mob.dart';
import 'login_view_tab.dart';

class LoginView extends StatelessWidget {
  static const routeNamed = '/login-view';
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: LoginViewMobPortrait(),
        landscape: LoginViewMobLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: LoginViewTabPortrait(),
        landscape: LoginViewTabLandscape(),
      ),
      desktop: LoginViewDesktop(),
    );
  }
}
