import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/widgets/screen_size.dart';
import 'package:flutter/material.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  const FloatingQuickAccessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  @override
  Widget build(BuildContext context) {

    const colorizeTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    return Center(
      heightFactor: 1,
      //Messageカードを表示する位置
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.40,
        ),
        child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child:
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: generateRowElements(),
                  // ),
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        '　　　WELCOME　TO　MY　PORTFOLIO!　　　',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                      // ColorizeAnimatedText(
                      //   'TO',
                      //   textStyle: colorizeTextStyle,
                      //   colors: colorizeColors,
                      // ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}