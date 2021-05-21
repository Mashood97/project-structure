import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final onPressed;
  const AppButton({this.child,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:(){
        onPressed();
      },
      child: child,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5.0,
        primary: Theme.of(context).accentColor,
      ),
    );
  }
}
