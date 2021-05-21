import 'package:get/get.dart';
import 'package:onlydesign/core/ui/view/login/login_view.dart';
import 'package:onlydesign/core/ui/view/register/register_view.dart';

class BasicAppRoutes {
  static navigateToScreenWithStack(String routeName, {var arguments}) {
    if (arguments != null) {
      Get.toNamed(routeName, arguments: arguments);
    }
    Get.toNamed(routeName);
  }

  static navigateToScreenAndRemoveStack(String routeName, {var arguments}) {
    if (arguments != null) {
      Get.offAllNamed(routeName, arguments: arguments);
    }
    Get.offAllNamed(routeName);
  }

  static navigateToPreviousScreen() {
    Get.back();
  }
}

class AppRoutes {
  static navigateToLoginView() {
    BasicAppRoutes.navigateToScreenWithStack(LoginView.routeNamed);
  }

  static navigateToRegisterView() {
    BasicAppRoutes.navigateToScreenWithStack(RegisterView.routeNamed);
  }
}
