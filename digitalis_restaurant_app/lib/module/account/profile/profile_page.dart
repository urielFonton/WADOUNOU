import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static String routeName = '/profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
            title: const Text(
              "Profile",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18.0,
              ),
            )),
    );
  }
}