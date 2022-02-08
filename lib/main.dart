import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'call_me_maybe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp
    ]);
  runApp(const CallMeMaybe());
}