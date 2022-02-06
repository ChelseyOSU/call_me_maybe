import 'package:flutter/material.dart';

Widget profileImage() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: SizedBox(
      child: Image.asset('assets/images/xiaoshi_zeng_profile.webp'),
      width: 100, height: 100
      )
    );
}