import 'package:flutter/material.dart';
import 'models/random_answer.dart';

class RandomCall extends StatefulWidget {
  @override
  State<RandomCall> createState() => _RandomCallState();
}

class _RandomCallState extends State<RandomCall> {
  final randomAnswer = RandomAnswer();

  Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Call Me ... Maybe"),
          askQuestion(context),
          Text("${randomAnswer.currentAnswer}")
        ],
      )
    );
}

Widget askQuestion(context) {
  return GestureDetector(onTap: () {setState(() {
    randomAnswer.generateRandomAnswer();
  });}, child: const Text("Ask a question ... tap for the answer"));
}

void displaySnackBar(BuildContext context) {
  final snackBar = SnackBar(content: Text("You asked a random question"));
  Scaffold.of(context).showSnackBar(snackBar);
}
}