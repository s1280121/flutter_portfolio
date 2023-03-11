import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';
import '../widgets/appbar_icon.dart';
import '../widgets/apps_item.dart';
import '../widgets/apps_title.dart';
import '../widgets/bottom.dart';
import '../widgets/favorite_item.dart';
import '../widgets/favorite_title.dart';
import '../widgets/me_item.dart';
import '../widgets/menu.dart';
import '../widgets/skill_item.dart';
import '../widgets/skill_title.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //AppBarのテキストホバー(下線)
  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

  //それぞれのセクション(ID)まで自動でスクロール
  ScrollToId? scrollToId;

  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    scrollToId = ScrollToId(scrollController: _scrollController);
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
      // PreferredSize(
      //   preferredSize: Size(screenSize.width, 1000),
      //   child: TopBarContents(_opacity),),
      PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('PORTFOLIO', style: TextStyle(color: Colors.blueGrey[100], fontSize: 20, fontFamily: 'Montserrat', fontWeight: FontWeight.w400, letterSpacing: 3,),),
                      SizedBox(width: screenSize.width / 22),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[0] = true
                                : _isHovering[0] = false;
                          });
                        },
                        onTap: () {scrollToId!.animateTo('0', duration: Duration(milliseconds: 500), curve: Curves.ease);},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('INTRODUCTION', style: TextStyle(color: _isHovering[0] ? Colors.blue[200] : Colors.white,),),
                            SizedBox(height: 5),
                            //ホバー(下線)
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
                              child: Container(height: 2, width: 20, color: Colors.white,),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 50),

                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        },
                        onTap: () {scrollToId!.animateTo('2', duration: Duration(milliseconds: 500), curve: Curves.ease);},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('APPS', style: TextStyle(color: _isHovering[1] ? Colors.blue[200] : Colors.white,),),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(height: 2, width: 20, color: Colors.white,),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 50),

                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {scrollToId!.animateTo('3', duration: Duration(milliseconds: 500), curve: Curves.ease);},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('SKILL', style: TextStyle(color: _isHovering[2] ? Colors.blue[200] : Colors.white,),),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(height: 2, width: 20, color: Colors.white,),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 50),

                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[3] = true
                                : _isHovering[3] = false;
                          });
                        },
                        onTap: () {scrollToId!.animateTo('4', duration: Duration(milliseconds: 500), curve: Curves.ease);},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('LINKS', style: TextStyle(color: _isHovering[3] ? Colors.blue[200] : Colors.white,)),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(height: 2, width: 20, color: Colors.white,),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AppbarIcon(),
              ],
            ),
          ),
        ),
      ),
      // drawer: ExploreDrawer(),
      body:InteractiveScrollViewer(
              scrollToId: scrollToId,
              children: <ScrollContent>[
                ScrollContent(
                  id: '0',
                  child: Stack(
                    children: [
                      Container(
                        child: SizedBox(
                          height: screenSize.height * 0.45,
                          width: screenSize.width,
                          child: Image.asset(
                            'assets/images/BiSH.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      FloatingQuickAccessBar(screenSize: screenSize),
                      AboutMe(screenSize: screenSize,),
                    ],
                  ),
                ),
                // ScrollContent(
                //   id: '1',
                //   child: SizedBox(height: screenSize.height / 10),
                // ),
                ScrollContent(
                  id: '1',
                  child: FavoriteTitle(screenSize: screenSize),
                ),
                ScrollContent(
                  id: '000',
                  child: FavoriteItem(),
                ),
                ScrollContent(
                  id: '2',
                  child: SizedBox(height: screenSize.height / 10),
                ),
                ScrollContent(
                  id: '0000',
                  child: AppsTitle(screenSize: screenSize,),
                ),
                ScrollContent(
                  id: '00000',
                  child: AppsItem(screenSize: screenSize)
                ),
                ScrollContent(
                  id: '3',
                  child: SizedBox(height: screenSize.height / 10),
                ),
                ScrollContent(
                    id: '000000',
                    child: SkillTitle(screenSize: screenSize,)
                ),
                ScrollContent(
                    id: '0000000',
                    child: SkillItem(screenSize: screenSize,)
                ),
                ScrollContent(
                  id: '00000000',
                  child: SizedBox(height: screenSize.height / 10),
                ),
                ScrollContent(
                  id: '4',
                  child: BottomBar(),
                ),
              ],
            ),
            // FavoriteTitle(screenSize: screenSize),
            // FavoriteItem(),
            // SizedBox(height: screenSize.height / 10),
            // BottomBar(),
      //     ],
      //   ),
      // ),
    );
  }
}