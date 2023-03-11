import 'package:flutter/material.dart';

import 'screen_size.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: widget.screenSize.height * 0.2),
            // Text("ABOUT ME",
            //   style: TextStyle(
            //   fontSize: 24,
            //   fontFamily: 'Montserrat',
            //   fontWeight: FontWeight.bold,
            // ),),
            ResponsiveWidget.isSmallScreen(context)
            ? Text("ARA　HARUTO",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 20,
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontWeight: FontWeight.bold,
                letterSpacing: 10,
            ),)
                : Text("My　name　is　ARA　HARUTO",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
              ),)
          ],
        ),
      ),
    );
  }
}
