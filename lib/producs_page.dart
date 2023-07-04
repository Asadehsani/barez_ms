import 'package:flutter/material.dart';


class ProducsPage extends StatefulWidget {
  const ProducsPage({Key? key}) : super(key: key);

  @override
  State<ProducsPage> createState() => _ProducsPageState();
}

class _ProducsPageState extends State<ProducsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products'),
        titleSpacing: Checkbox.width,
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
