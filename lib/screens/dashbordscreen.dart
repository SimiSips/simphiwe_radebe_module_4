import 'package:flutter/material.dart';
import 'package:simphiwe_radebe_module_4/screens/profile_page.dart';
import 'package:simphiwe_radebe_module_4/screens/screen1.dart';
import 'package:simphiwe_radebe_module_4/screens/screen2.dart';
import 'package:simphiwe_radebe_module_4/screens/userprofilescreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.black,
        title: const Center(child: Text("Dashboard")),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Screen1())
                      );
                    },
                    child: Container(

                      height: 200.0,
                      width: 250.0,
                      child: const Center(
                        child: Text("Screen 1", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0,
                        ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(20.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black.withAlpha(100),
                                blurRadius: 20.0),
                          ]),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Screen2())
                      );
                    },
                    child: Container(
                      height: 200.0,
                      width: 250.0,
                      child: const Center(
                        child: Text("Screen 2", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0,
                        ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(20.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black.withAlpha(100),
                                blurRadius: 20.0),
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => ProfilePage())
          );
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.person),
      ),
    );
  }
}
