import 'package:barez_ms/Draver.dart';
import 'package:barez_ms/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'settingPage.dart';
import 'producs_page.dart';
import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Bar',
      home: ButtomNavig(),
    ),
  );
}

class ButtomNavig extends StatefulWidget {
  @override
  ButtomNavigState createState() => ButtomNavigState();
}

class ButtomNavigState extends State<ButtomNavig> {
  var currentIndex = 0;
  late Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = HomePage();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        height: screenWidth * .175,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.50),
              blurRadius: 50,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .055),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                currentPage = widgets[index];
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: screenWidth * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? screenWidth * .15 : 0,
                      width: index == currentIndex ? screenWidth * .2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Colors.blueAccent.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * .2125,
                  alignment: Alignment.center,
                  child: Icon(
                    listOfIcons[index],
                    size: screenWidth * .1,
                    color: index == currentIndex
                        ? Colors.blueAccent
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: currentPage,
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.production_quantity_limits_outlined,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];

  List<Widget> widgets = [
    MyCustomUI(),
    HomePage(),
    ProducsPage(),
    SettingPage(),
    ProducsPage(),
  ];
}
