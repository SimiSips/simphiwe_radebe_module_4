import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.black,
        title: const Center(child: Text("Screen 1")),
      ),
      body: const Center(
        child: Text("Screen 1"),
      ),
    );
  }
}
