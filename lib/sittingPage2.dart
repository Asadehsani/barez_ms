import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';


class sittingPage extends StatefulWidget {
  const sittingPage({super.key});

  @override
  State<sittingPage> createState() => _sittingPageState();
}

class _sittingPageState extends State<sittingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sitting", style: TextStyle(fontSize: 35),
        ),
      ),
      body: Column(
        children: [

          MyTile(Icons.color_lens, 'Themes', () {
            HapticFeedback.lightImpact();
            Fluttertoast.showToast(
              msg: 'Button pressed',
            );
          }),
          MyTile(Icons.font_download_outlined, 'Font Size', () {
            HapticFeedback.lightImpact();
            Fluttertoast.showToast(
              msg: 'Button pressed',
            );
          }),
          MyTile(Icons.language, 'Languages', () {
            HapticFeedback.lightImpact();
            Fluttertoast.showToast(
              msg: 'Button pressed',
            );
          }),
          MyTile(Icons.find_in_page_outlined, 'Privacy Policy', () {
            HapticFeedback.lightImpact();
            Fluttertoast.showToast(
              msg: 'Button pressed',
            );
          }),
        ],
      ),
    );
  }
}

Widget MyTile(
IconData icon,
String title,
VoidCallback voidCallback,
) {
  return Column(
    children: [
      ListTile(

        tileColor: Colors.white30,
        leading: CircleAvatar(
          maxRadius: 25,
          backgroundColor: Colors.blue,
          child: Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
        ),
        onTap: voidCallback,
        title: Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        trailing: Icon(
          Icons.arrow_right,
          color: Colors.white,
        ),
      ),
    ],
  );
}

