import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simphiwe_radebe_module_4/main.dart';
import 'package:simphiwe_radebe_module_4/screens/registrationscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      splash: 'images/logo.png',
      nextScreen: const RegistrationScreen(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRight,
    );
  }
}
