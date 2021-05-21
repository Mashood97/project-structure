import 'package:flutter/material.dart';
import 'package:onlydesign/utils/constant/constant.dart';

class AppListView extends StatelessWidget {
  final int itemCount;
  final itemBuilder;
  final scrollingPhysics;
  final bool isReverse;
  final scrollDirection;

  AppListView({
    this.itemBuilder,
    this.itemCount,
    this.scrollingPhysics,
    this.isReverse = false,
    this.scrollDirection = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: ListView.builder(
        itemBuilder: itemBuilder,
        reverse: isReverse,
        scrollDirection: scrollDirection,
        itemCount: itemCount,
        physics: scrollingPhysics,
      ),
    );
  }
}

class AppListViewWithSeparator extends StatelessWidget {
  final int itemCount;
  final itemBuilder;
  final separatorBuilder;
  final scrollingPhysics;
  final bool isReverse;
  final scrollDirection;

  AppListViewWithSeparator({
    this.itemBuilder,
    this.itemCount,
    this.separatorBuilder,
    this.scrollingPhysics,
    this.isReverse = false,
    this.scrollDirection = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: ListView.separated(
        itemBuilder: itemBuilder,
        physics: scrollingPhysics,
        itemCount: itemCount,
        reverse: isReverse,
        scrollDirection: scrollDirection,
        separatorBuilder: separatorBuilder,
      ),
    );
  }
}
