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
        Flexible(
          flex: 5,
          child:
          FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: 0.8,
          heightFactor: 0.8,
          child: Padding(
            padding: EdgeInsets.all(padding(context)),
            child: profileImage()
          ),
        )),
        Flexible(
          flex: 1,
          child: FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 0.8,
            heightFactor: 0.3,
            child: Padding(
              padding: EdgeInsets.all(padding(context)),
              child: const Text("Student at Oregon State Unversity", 
              textAlign: TextAlign.center,)
            ))
        ),
        Flexible(
          flex: 1,
          child: ElevatedButton(
            onPressed: _lanuchSMS,
            child: Text("706-201-4495")
          )
        ),
        Flexible(
          flex: 1,
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child:
                    FractionallySizedBox(
                      alignment: Alignment.center,
                      widthFactor: 0.9,
                      child: 
                        ElevatedButton(
                          onPressed: _launchURL,
                          child: Text(_url)
                        )
                    ),
                ),
                Padding(padding: EdgeInsets.all(padding(context))),
                Flexible(
                  flex: 1,
                  child:
                    FractionallySizedBox(
                      alignment: Alignment.center,
                      widthFactor: 0.9,
                      child: 
                        ElevatedButton(
                          onPressed: _launchURL,
                          child: Text(_emailAddress)
                        )
                    ),
                )
              ]
            )
          )
      ]
    );
  }

  double padding(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.01;
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