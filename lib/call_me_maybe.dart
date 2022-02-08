import 'package:flutter/material.dart';
import 'models/profile.dart';
import 'screens/random_call_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/resume_screen.dart';


class CallMeMaybe extends StatefulWidget {
  const CallMeMaybe({Key? key}) : super(key: key);

  @override
  State<CallMeMaybe> createState() => _CallMeMaybeState();
}

class _CallMeMaybeState extends State<CallMeMaybe> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: MainTabController()
    );
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.account_box)),
    Tab(icon: Icon(Icons.book)),
    Tab(icon: Icon(Icons.question_answer)),
  ];

  final screens = [
    ProfileScreen(),
    ResumeScreen(),
    RandomCallScreen()
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Call Me Maybe'),
            bottom: const TabBar(tabs: tabs)
            ), 
          body: TabBarView(children: screens)
        ),
    );
  }
}