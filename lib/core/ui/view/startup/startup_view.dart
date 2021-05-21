import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlydesign/core/ui/controller/startup_controller.dart';
import 'package:onlydesign/core/ui/view/startup/startup_view_desktop.dart';
import 'package:onlydesign/core/ui/view/startup/startup_view_mob.dart';
import 'package:onlydesign/core/ui/view/startup/startup_view_tab.dart';
import 'package:onlydesign/utils/responsive/orientation_layout.dart';
import 'package:onlydesign/utils/responsive/screen_type_layout.dart';

class StartupView extends StatelessWidget {
  static const routeNamed = '/';

  final _startUpController = Get.put(
    StartUpController(),
  );
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: StartUpViewMobPortrait(),
        landscape: StartUpViewMobLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: StartUpViewTabPortrait(),
        landscape: StartUpViewTabLandscape(),
      ),
      desktop: StartUpViewDesktop(),
    );
  }
}
