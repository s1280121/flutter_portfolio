import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'screen_size.dart';

class AppbarIcon extends StatefulWidget {
  const AppbarIcon({Key? key}) : super(key: key);

  @override
  State<AppbarIcon> createState() => _AppbarIconState();
}

class _AppbarIconState extends State<AppbarIcon> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context) ?
    Row(
      children: [
        IconButton(
          icon: Icon(Icons.brightness_6),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          color: Colors.white,
          onPressed: () {
            EasyDynamicTheme.of(context).changeTheme();
          },
        ),
        SizedBox(
          width: screenSize.width / 200,
        ),
      ],
    ) :
    Row(
      children: [
        IconButton(
          icon: Icon(Icons.message),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          color: Colors.white,
          onPressed: () {
            showDialog(
              barrierDismissible: true,
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("THANK YOU"),
                  content: Text("for watching!!"),
                  actions: [
                    TextButton(
                      child: Text("👍"),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                );
              },
            );
            },
        ),
        IconButton(
          icon: Icon(Icons.brightness_6),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          color: Colors.white,
          onPressed: () {
            EasyDynamicTheme.of(context).changeTheme();
          },
        ),
        SizedBox(
          width: screenSize.width / 100,
        ),
      ],
    );
  }
}
