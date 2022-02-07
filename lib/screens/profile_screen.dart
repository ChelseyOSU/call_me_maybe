import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import '../models/profile.dart';

const String _url = 'https://github.com/ChelseyOSU';
const String _androidPhoneNumber = '+1 706 201 4495?body=hello%20there';
const String _iosPhoneNumber = '17062014495&body=hello%20there';
const String _emailAddress='zengxi@oregonstate.edu';


class ProfileScreen extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(child: profileImage(), height:200),
        SizedBox(child: const Text("Student at Oregon State Unversity"), height:300),
        ElevatedButton(
          onPressed: _lanuchSMS,
          child: Text("706-201-4495")
          ),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            ElevatedButton(
              onPressed: _launchURL,
              child: Text(_url)
            ),
            Text(_emailAddress)
           ], 
        )
      ]);
  }
}

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not connect to $_url';
}

void _lanuchSMS() async {
  if (Platform.isAndroid) {
    if (!await launch("sms:${_androidPhoneNumber}")) throw 'Could not connect to android messages';
  } else if (Platform.isIOS) {
    if (!await launch("sms:${_iosPhoneNumber}")) throw 'Could not connect to iMessages';
  }
}