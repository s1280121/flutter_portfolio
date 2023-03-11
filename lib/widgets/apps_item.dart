import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'screen_size.dart';

class AppsItem extends StatelessWidget {
  AppsItem({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/ode.png',
    'assets/images/meshi.jpg',
    'assets/images/gonbe.png',
  ];

  final List<String> title = ['お出かけ永和', 'スグめし', '権兵衛オーダー'];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenSize.width / 3,
                              width: screenSize.width / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    if(pageIndex==0) launch('https://github.com/s1280121/Odekeke_Hackathon#readme',);
                                    if(pageIndex==1) launch('https://github.com/s1280121/sugumeshi#readme',);
                                    if(pageIndex==2) launch('https://github.com/s1280121/GonbeInHouse#readme',);
                                    // if(pageIndex==0) launch('https://github.com/s1280121',);
                                  },
                                  child: Image.asset(
                                    assets[pageIndex],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 70,
                              ),
                              child: Text(
                                title[pageIndex],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1!
                                      .color,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int pageIndex) => Column(
                    children: [
                      SizedBox(
                        // height: screenSize.width / 6,
                        height: screenSize.width / 6,
                        width: screenSize.width / 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: GestureDetector(
                            onTap: (){
                              if(pageIndex==0) launch('https://github.com/s1280121/Odekeke_Hackathon#readme',);
                              if(pageIndex==1) launch('https://github.com/s1280121/sugumeshi#readme',);
                              if(pageIndex==2) launch('https://github.com/s1280121/GonbeInHouse#readme',);
                              // if(pageIndex==0) launch('https://github.com/s1280121',);
                            },
                            child: Image.asset(
                              assets[pageIndex],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          title[pageIndex],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context)
                                .primaryTextTheme
                                .subtitle1!
                                .color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
