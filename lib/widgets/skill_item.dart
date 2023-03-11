import 'package:flutter/material.dart';

import 'screen_size.dart';

class SkillItem extends StatefulWidget {
  const SkillItem({Key? key, required this.screenSize,}) : super(key: key);

  final Size screenSize;

  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.white,
              child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://i0.wp.com/clay-atlas.com/wp-content/uploads/2021/02/Flutter_LOGO.png?resize=930%2C375&ssl=1"),
                    )),
              )
          ),
          Text("ハッカソンで交通アプリを作ったり、\nインターンで使用したりしました。",textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.white,
              child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://i0.wp.com/blog.applibot.co.jp/wp-content/uploads/2018/05/20170608001348.png?fit=720%2C360&ssl=1"),
                    )),
              )
          ),
          Text("Firebaseを利用したアプリや、\n飲食店検索アプリを開発しました。",textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Column(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white,
                  child: Container(
                    width: 180,
                    height: 80,
                    child: Image.asset(
                      "images/Firebase.PNG",
                      fit: BoxFit.fitHeight,
                    ),
                  )
              ),
              Text("Authentication, Cloud Firestore, \nNotificationsなどを使ったことがあります。",textAlign: TextAlign.center,),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    )
    : Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.white,
                      child: Container(
                        width: 180,
                        height: 80,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://i0.wp.com/clay-atlas.com/wp-content/uploads/2021/02/Flutter_LOGO.png?resize=930%2C375&ssl=1"),
                            )),
                      )
                  ),
                  Text("ハッカソンで交通アプリを作ったり、インターンで使用したりしました。",textAlign: TextAlign.center,),
                  SizedBox(height: 10,),
                ],
              ),
              Column(
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.white,
                      child: Container(
                        width: 180,
                        height: 80,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://i0.wp.com/blog.applibot.co.jp/wp-content/uploads/2018/05/20170608001348.png?fit=720%2C360&ssl=1"),
                            )),
                      )
                  ),
                  Text("Firebaseを利用したアプリや、飲食店検索アプリを開発しました。",textAlign: TextAlign.center,),
                  SizedBox(height: 10,),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
          SizedBox(
            // width: widget.screenSize.width/2,
            child: Column(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.white,
                    child: Container(
                      width: 180,
                      height: 80,
                      child: Image.asset(
                        "images/Firebase.PNG",
                        fit: BoxFit.fitHeight,
                      ),
                    )
                ),
                Text("Authentication, Cloud Firestore, Notificationsなどを使ったことがあります。",textAlign: TextAlign.center,),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
