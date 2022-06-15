import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simphiwe_radebe_module_4/themes.dart';
import 'package:simphiwe_radebe_module_4/utils/user_preference.dart';

AppBar buildAppBar(BuildContext context) {

  return AppBar(
    leading: const BackButton(
      color: Colors.black,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: const Text("User Profile", style: TextStyle(
      color: Colors.black
    ),),
  );
}
