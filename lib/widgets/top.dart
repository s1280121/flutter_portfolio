// import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
// import 'package:flutter/material.dart';
//
// class TopBarContents extends StatefulWidget {
//   final double opacity;
//
//   TopBarContents(this.opacity);
//
//   @override
//   _TopBarContentsState createState() => _TopBarContentsState();
// }
//
// class _TopBarContentsState extends State<TopBarContents> {
//
//   final List _isHovering = [
//     false,
//     false,
//     false,
//     false,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//
//     return PreferredSize(
//       preferredSize: Size(screenSize.width, 1000),
//       child: Container(
//         color: Theme.of(context).bottomAppBarColor.withOpacity(widget.opacity),
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'PORTFOLIO',
//                 style: TextStyle(
//                   color: Colors.blueGrey[100],
//                   fontSize: 20,
//                   fontFamily: 'Montserrat',
//                   fontWeight: FontWeight.w400,
//                   letterSpacing: 3,
//                 ),
//               ),
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   SizedBox(width: screenSize.width / 8),
//                   InkWell(
//                     onHover: (value) {
//                       setState(() {
//                         value
//                             ? _isHovering[0] = true
//                             : _isHovering[0] = false;
//                       });
//                     },
//                     onTap: () {},
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Discover',
//                           style: TextStyle(
//                             color: _isHovering[0]
//                                 ? Colors.blue[200]
//                                 : Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Visibility(
//                           maintainAnimation: true,
//                           maintainState: true,
//                           maintainSize: true,
//                           visible: _isHovering[0],
//                           child: Container(
//                             height: 2,
//                             width: 20,
//                             color: Colors.white,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//
//
//                   SizedBox(width: screenSize.width / 20),
//                   InkWell(
//                     onHover: (value) {
//                       setState(() {
//                         value
//                             ? _isHovering[1] = true
//                             : _isHovering[1] = false;
//                       });
//                     },
//                     onTap: () {},
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Contact Us',
//                           style: TextStyle(
//                             color: _isHovering[1]
//                                 ? Colors.blue[200]
//                                 : Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Visibility(
//                           maintainAnimation: true,
//                           maintainState: true,
//                           maintainSize: true,
//                           visible: _isHovering[1],
//                           child: Container(
//                             height: 2,
//                             width: 20,
//                             color: Colors.white,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//
//
//                   InkWell(
//                     onHover: (value) {
//                       setState(() {
//                         value
//                             ? _isHovering[2] = true
//                             : _isHovering[2] = false;
//                       });
//                     },
//                     onTap: () {},
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Discover',
//                           style: TextStyle(
//                             color: _isHovering[2]
//                                 ? Colors.blue[200]
//                                 : Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Visibility(
//                           maintainAnimation: true,
//                           maintainState: true,
//                           maintainSize: true,
//                           visible: _isHovering[2],
//                           child: Container(
//                             height: 2,
//                             width: 20,
//                             color: Colors.white,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//
//
//                   InkWell(
//                     onHover: (value) {
//                       setState(() {
//                         value
//                             ? _isHovering[3] = true
//                             : _isHovering[3] = false;
//                       });
//                     },
//                     onTap: () {},
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Discover',
//                           style: TextStyle(
//                             color: _isHovering[3]
//                                 ? Colors.blue[200]
//                                 : Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Visibility(
//                           maintainAnimation: true,
//                           maintainState: true,
//                           maintainSize: true,
//                           visible: _isHovering[3],
//                           child: Container(
//                             height: 2,
//                             width: 20,
//                             color: Colors.white,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//               Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.message),
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     color: Colors.white,
//                     onPressed: () {
//                       showDialog(
//                         barrierDismissible: true,
//                         context: context,
//                         builder: (context) {
//                           return AlertDialog(
//                             title: Text("THANK YOU"),
//                             content: Text("for watching!!"),
//                             actions: [
//                               TextButton(
//                                 child: Text("👍"),
//                                 onPressed: () => Navigator.pop(context),
//                               ),
//                             ],
//                           );
//                         },
//                       );                },
//                   ),
//               IconButton(
//                 icon: Icon(Icons.brightness_6),
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 color: Colors.white,
//                 onPressed: () {
//                   EasyDynamicTheme.of(context).changeTheme();
//                 },
//               ),
//               SizedBox(
//                 width: screenSize.width / 50,
//               ),
//                 ],
//               ),
//             ],
//           ),
//       ),
//       ),
//     );
//   }
// }
