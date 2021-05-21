import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onlydesign/core/ui/view/login/login_view.dart';
import 'package:onlydesign/core/ui/view/register/register_view.dart';
import 'package:onlydesign/core/ui/view/startup/startup_view.dart';

import 'utils/themes/light_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      builder: DevicePreview.appBuilder,
      initialRoute: StartupView.routeNamed,
      getPages: [
        GetPage(
          name: StartupView.routeNamed,
          page: () => StartupView(),
        ),
        GetPage(
          name: LoginView.routeNamed,
          page: () => LoginView(),
        ),
        GetPage(
          name: RegisterView.routeNamed,
          page: () => RegisterView(),
        ),
      ],
    );
  }
}
