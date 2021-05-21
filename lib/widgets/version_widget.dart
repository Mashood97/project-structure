import 'package:flutter/material.dart';

class VersionWidget extends StatelessWidget {
  const VersionWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: _mediaQuery.size.width,
        color: Theme.of(context).primaryColor,
        child: Text(
          'Version 0.0.1',
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 10.0,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
