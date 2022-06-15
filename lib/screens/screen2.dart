import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.black,
        title: const Center(child: Text("Screen 2")),
      ),
      body: const Center(
        child: Text("Screen 2"),
      ),
    );
  }
}
