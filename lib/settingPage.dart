import 'package:barez_ms/sittingPage2.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Sitting",
            style: TextStyle(fontSize: 35),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sittingPage()),
              );
            });
          },
          child: Icon(
            Icons.add,
            size: 50,
          ),
          backgroundColor: Colors.blueAccent,
        ));
  }
}
