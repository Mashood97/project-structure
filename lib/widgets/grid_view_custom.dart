import 'package:flutter/material.dart';
import 'package:onlydesign/utils/constant/constant.dart';

class CustomGridView extends StatelessWidget {
  final double childAspectRatio;
  final int crossAxisCount;
  final itemBuilder;
  final int itemCount;
  final bool shrinkWrap;

  CustomGridView(
      {this.childAspectRatio,
      this.crossAxisCount,
      this.itemBuilder,
        this.shrinkWrap = false,
      this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: GridView.builder(
        shrinkWrap: shrinkWrap,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: childAspectRatio,
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (ctx, index) => itemBuilder(ctx, index),
        itemCount: itemCount,
      ),
    );
  }
}
