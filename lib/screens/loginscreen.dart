import 'package:flutter/material.dart';
import 'package:simphiwe_radebe_module_4/screens/registrationscreen.dart';

import 'dashbordscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 70,),

                const Text('LOGIN',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(20.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black.withAlpha(100),
                                  blurRadius: 20.0),
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 12.0, top: 2),
                              child: TextFormField(
                                style: const TextStyle(fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  icon: Padding(
                                      padding: EdgeInsets.only(top: 0),
                                      child: Icon(Icons.email, color: Colors.black,)),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(20.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black.withAlpha(100),
                                  blurRadius: 20.0),
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 12.0, top: 2),
                              child: TextFormField(
                                style: const TextStyle(fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                                cursorColor: Colors.black,
                                obscureText: _obscureText,

                                decoration: InputDecoration(
                                  icon: GestureDetector(
                                    onTap: (){
                                      _toggle();
                                      //hide = false;
                                      print(_obscureText ? "Show" : "Hide");
                                    },
                                    child: const Padding(
                                        padding: EdgeInsets.only(top: 0),
                                        child: Icon(Icons.remove_red_eye, color: Colors.black,)),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            /*GestureDetector(
                              onTap: (){
                                _toggle();
                                //hide = false;
                                print(_obscureText ? "Show" : "Hide");
                              },
                                child: Icon(Icons.remove_red_eye)),*/
                          ],
                        ),
                      ),
                      const SizedBox(height: 40,),
                      RaisedButton(
                        padding: const EdgeInsets.only(
                          left: 90, right: 90, top: 15, bottom: 10,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const DashboardScreen())
                          );
                        },
                        elevation: 9,
                        color: Colors.black,
                        child: const SizedBox(
                          height: 30,
                          child: Text("LOGIN",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight
                                .bold, color: Colors.white),),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),

                    ],
                  ),
                ),

                FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const RegistrationScreen())
                      );
                    },
                    child: const Text('Don\'t have an account, sign up here')
                ),

                const Text('\u00a9 2022 Brain Cap Developers'),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
