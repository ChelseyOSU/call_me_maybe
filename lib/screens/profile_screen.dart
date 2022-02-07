import 'package:flutter/material.dart';
import '../models/profile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(child: profileImage(), height:200),
        SizedBox(child: const Text("Student at Oregon State Unversity"), height:300),
        SizedBox(child: const Text("zengxi@oregonstate.edu"), height: 200)
      ]);
  }
}