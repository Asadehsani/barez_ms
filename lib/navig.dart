// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// main  (){
//
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: naviga(),
//     )
//   );
// }
//
// class naviga extends StatefulWidget {
//   const naviga({super.key});
//
//   @override
//   State<naviga> createState() => _navigaState();
// }
// var currentIndex = 0;
// class _navigaState extends State<naviga> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       bottomNavigationBar: Container(
//         margin: EdgeInsets.all(10),
//         height: size.width * .165,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//         BoxShadow(
//         color: Colors.black.withOpacity(.60),
//           blurRadius: 30,
//         offset: Offset(0, 10),
//         ),
//
//           ],
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: ListView.builder(
//             itemCount: 4,
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.symmetric(horizontal: size.width * .024),
//             itemBuilder: (context, index) =>
//               InkWell(
//                 onTap: (){
//                   setState(() {
//                     currentIndex = index;
//                   },
//                   );
//                 },
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     AnimatedContainer(duration:
//                     Duration(milliseconds: 0),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       margin: EdgeInsets.only(
//                         bottom: index ==  currentIndex ? 0: size.width * .029,
//                         right: size.width * .0488,
//                         left: size.width * .0488,
//                       ),
//                       width: size.width * .128,
//                       height: index ==  currentIndex ? size.width * .014 : 0,
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.vertical(
//                           bottom: Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                     Icon(listOfIcons[index],
//                     size: size.width * .1,
//                     color: index == currentIndex
//                       ? Colors.blueAccent
//                         : Colors.black38,
//                     ),
//                     SizedBox(height: size.width * .03,)
//                   ],
//                 ),
//               ),
//            ),
//          ),
//       );
//     }
//   List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.production_quantity_limits_sharp,
//     Icons.settings_rounded,
//     Icons.person_rounded,
//   ];
// }
