import 'package:flutter/material.dart';
import 'package:onlydesign/utils/constant/constant.dart';



class AppTextField extends StatelessWidget {

  final String label;
  final IconData trailingIcon;
  final IconData prefixIconData;
  final TextEditingController controller;
  final bool secureText;

  final validator;

  AppTextField({
    this.label,
    this.trailingIcon,
    this.prefixIconData,
    this.controller,
    this.validator,
    this.secureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: TextFormField(
        controller: controller,
        obscureText: secureText,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.black54,
            fontSize: 12.0,
          ),
          suffixIcon: Icon(
            trailingIcon,
            color: kIconColor,
          ),
          prefixIcon: Icon(
            prefixIconData,
            color: kIconColor,
          ),
          contentPadding: kPadding,
          border: OutlineInputBorder(borderRadius: kBorderRadius,borderSide: BorderSide.none),
          filled: true,
          fillColor: kTextFieldColor,
        ),
      ),
    );
  }
}
