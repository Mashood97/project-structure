import 'package:flutter/material.dart';
import 'package:get/get.dart';



const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kRadius = Radius.circular(20.0);
const kPadding = EdgeInsets.all(10.0);
const kDivider = Divider();
const kIconColor = kBlackColor;
const kSizedBox= SizedBox(height: 10.0,);
final kTextFieldColor = Colors.grey.shade100;
const kPaddingLeftRight = EdgeInsets.only(left:10.0,right: 10.0);
final kBorderRadius =BorderRadius.circular(10.0);
const kAppNotInstalled = 'App not installed,Please Install The App';
const kInternetErrorMessage =
    'There is no or poor internet connection. Please try again when there is stable connection.';
const kServerError = 'Server resources are busy, try again later';

class Constant {



  static bool get isOverLayOpen => Get.isOverlaysOpen;
  static bool get isOverLayClose => Get.isOverlaysClosed;

  static String get getCurrentRoute => Get.currentRoute;
  static showInternetSnackBar() {
    Get.snackbar(
      'Failed',
      kInternetErrorMessage,
      backgroundColor: Colors.red,
      colorText: kWhiteColor,
    );
  }

  static showSuccessSnackBar(String message) {
    Get.snackbar(
      'Success',
      message,
      backgroundColor: Colors.green,
      colorText: kWhiteColor,

    );
  }

  static showErrorSnackBar(String message) {
    Get.snackbar(
      'Failed',
      message,
      backgroundColor: Colors.red,
      colorText: kWhiteColor,
    );
  }

  static showDialog(
      {final onCancel,
        final onConfirm,
        String cancel,
        String confirm,
        String title,
        Widget content}) {
    Get.defaultDialog(
      title: title,
      content: content,
      barrierDismissible: false,
      textCancel: cancel,
      textConfirm: confirm,
      // buttonColor: kBlackColor,
      cancelTextColor: kBlackColor,
      confirmTextColor: kBlackColor,
      onCancel: () {
        onCancel();
        Get.back();
      },
      onConfirm: () {
        onConfirm();
        Get.back();
      },
    );
  }

  static showDialogwithCustomTitle(
      {final onCancel,
        final title,
        final onConfirm,
        String cancel,
        String confirm,
        Widget content}) {
    Get.defaultDialog(
      title: title,
      content: content,
      textCancel: cancel,
      textConfirm: confirm,
      // buttonColor: kBlackColor,
      cancelTextColor: kWhiteColor,
      confirmTextColor: kBlackColor,
      onCancel: () {
        onCancel();
        Get.back();
      },
      onConfirm: () {
        onConfirm();
        Get.back();
      },
    );
  }
}