import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlydesign/core/ui/controller/startup_controller.dart';
import 'package:onlydesign/utils/constant/constant.dart';
import 'package:onlydesign/utils/responsive/screen_type_layout.dart';
import 'package:onlydesign/utils/routes/app_route.dart';
import 'package:onlydesign/widgets/CustomAppBar.dart';
import 'package:onlydesign/widgets/app_button.dart';
import 'package:onlydesign/widgets/grid_view_custom.dart';
import 'package:onlydesign/widgets/version_widget.dart';

class StartUpViewMobPortrait extends StatelessWidget {
  StartUpController _controller = Get.find();

  Widget isAndroidWidget(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Startup',
        leading: Padding(
          padding: kPaddingLeftRight,
          child: Obx(
            () => Switch.adaptive(
              value: _controller.isSwitch,
              onChanged: (bool val) => _controller.setSwitchValue(val),
              activeColor: Theme.of(context).accentColor,
              activeTrackColor: Theme.of(context).accentColor,
              inactiveTrackColor: Colors.grey.shade200,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: kRadius,
                    topRight: kRadius,
                  ),
                ),
                child: Padding(
                  padding: kPadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Welcome to \nthe new \nexperience',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Icon(
                            Icons.whatshot,
                            size: 100,
                            color: Theme.of(context).accentColor,
                          ),
                        ],
                      ),
                      Text(
                        'Next level of features with\nhighly security and quality',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.white70,
                            ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: kPaddingLeftRight,
                              child: SizedBox(
                                height: 60,
                                child: AppButton(
                                  child: Text(
                                    'Log In',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          color: kWhiteColor,
                                        ),
                                  ),
                                  onPressed: () =>
                                      AppRoutes.navigateToLoginView(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: AppButton(
                                child: Icon(Icons.settings_overscan),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: kPaddingLeftRight,
                        child: SizedBox(
                          height: 60,
                          child: AppButton(
                            child: Text(
                              'Become a client',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    color: kWhiteColor,
                                  ),
                            ),
                            onPressed: () => AppRoutes.navigateToRegisterView(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            VersionWidget(),
          ],
        ),
      ),
    );
  }

  Widget isIosWidget(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomIosAppBar(
        style: Theme.of(context).textTheme.headline6,
        appTitle: 'Dashboard',
        leading: Padding(
          padding: kPaddingLeftRight,
          child: Obx(
            () => Switch.adaptive(
              value: _controller.isSwitch,
              onChanged: (bool val) => _controller.setSwitchValue(val),
              activeColor: Theme.of(context).accentColor,
            ),
          ),
        ),
        trailing: Icon(
          CupertinoIcons.square_arrow_left,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: kRadius,
                    topRight: kRadius,
                  ),
                ),
                child: Padding(
                  padding: kPadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Welcome to \nthe new \nexperience',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Icon(
                            Icons.wb_sunny,
                            size: 100,
                            color: Theme.of(context).accentColor,
                          ),
                        ],
                      ),
                      Text(
                        'Next level of features with\nhighly security and quality',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.white70,
                            ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: kPaddingLeftRight,
                              child: SizedBox(
                                height: 60,
                                child: AppButton(
                                  child: Text(
                                    'Log In',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          color: kWhiteColor,
                                        ),
                                  ),
                                  onPressed: () =>
                                      AppRoutes.navigateToLoginView(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: AppButton(
                                child: Icon(Icons.settings_overscan),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: kPaddingLeftRight,
                        child: SizedBox(
                          height: 60,
                          child: AppButton(
                            child: Text(
                              'Become a client',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    color: kWhiteColor,
                                  ),
                            ),
                            onPressed: () => AppRoutes.navigateToRegisterView(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            VersionWidget(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return ScreenTypeLayout.isAndroid
        ? isAndroidWidget(context)
        : isIosWidget(context);
  }
}

class StartUpViewMobLandscape extends StatelessWidget {
  const StartUpViewMobLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}

// CustomGridView(
//   childAspectRatio:
//       _controller.getIconsList.length > 10 ? 6 / 5 : 5 / 4,
//   shrinkWrap: true,
//   crossAxisCount: _controller.getIconsList.length > 10 ? 5 : 4,
//   itemCount: _controller.getIconsList.length,
//   itemBuilder: (ctx, index) => Card(
//     shape: RoundedRectangleBorder(
//       borderRadius: kBorderRadius,
//     ),
//     elevation: 5.0,
//     color: Theme.of(context).primaryColor,
//     child: Icon(
//       _controller.getIconsList[index],
//       size: 40,
//       color: kBlackColor,
//     ),
//   ),
// ),
