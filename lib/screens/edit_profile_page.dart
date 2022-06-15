import 'dart:io';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:simphiwe_radebe_module_4/screens/profile_page.dart';

import '../model/user.dart';
import '../widget/appbar_widget.dart';
import '../widget/profile_widget.dart';
import '../widget/textfield_widget.dart';
import 'package:simphiwe_radebe_module_4/utils/user_preference.dart';


class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Builder(
    builder: (context) => Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Full Name',
            text: user.name,
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'About',
            text: user.about,
            maxLines: 5,
            onChanged: (about) {},
          ),
        ],
      ),
    ),
  );
}
