import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlydesign/utils/constant/constant.dart';
import 'package:onlydesign/widgets/CustomAppBar.dart';
import 'package:onlydesign/widgets/app_button.dart';
import 'package:onlydesign/widgets/app_text_field.dart';
import 'package:onlydesign/widgets/version_widget.dart';

class LoginViewMobPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuey = MediaQuery.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Login',
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: kPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 50.0,
              ),
              kSizedBox,
              AppTextField(
                label: 'Enter email/username',
                prefixIconData: Icons.person_pin,
                validator: (val) => val.toString().isEmpty
                    ? 'Please enter email/username'
                    : null,
              ),
              AppTextField(
                label: 'Enter password',
                prefixIconData: Icons.phonelink_lock,
                secureText: true,
                validator: (val) =>
                    val.toString().isEmpty ? 'Please enter password' : null,
              ),
              Padding(
                padding: kPadding,
                child: SizedBox(
                  height: 60.0,
                  width: _mediaQuey.size.width,
                  child: AppButton(
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color: kWhiteColor,
                          ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50.0,
                      child: AppButton(  onPressed: () {},
                        child: FittedBox(
                          child: Text(
                            'Forgot Password',

                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                              color: kWhiteColor,
                            ),
                          ),
                        ),),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50.0,
                      child: AppButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(
                                color: kWhiteColor,
                              ),
                        ),
                      ),
                    ),
                  ),),
                ],
              ),
              // VersionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginViewMobLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
