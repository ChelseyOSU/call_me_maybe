import 'dart:math';

class RandomAnswer {
  final Random random = Random();
  final List<String> availableAnswers = [
    'Yes for sure!',
    'Absolutely not!',
    'Maybe',
    'Nah. Next time!',
    'How much do you know about Flutter?',
    'Why not, honored to interview OSU alumni!',
    'You need to answer this first, Vim or Emacs?',
    'Do you prefer tabs or 4 spaces?',
    'What\'s your favoriate IDE?',
  ];
  // private to the class, implement another getter
  String _currentAnswer = "";

  String get currentAnswer => _currentAnswer;
  
  void generateRandomAnswer() {
    _currentAnswer = availableAnswers[random.nextInt(availableAnswers.length)];
  }
}