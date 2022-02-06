import 'package:flutter/material.dart';
import 'profile.dart';

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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_box)),
                Tab(icon: Icon(Icons.book)),
                Tab(icon: Icon(Icons.question_answer)),
              ],
            ),
            title: const Text('Call Me Maybe'),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(child: profileImage(), height:200),
                  SizedBox(child: const Text("Student at Oregon State Unversity"), height:300),
                  SizedBox(child: const Text("Github: "), height: 200)
                ]),
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}