import 'package:quizzler_flutter_starter/questions.dart';

class QuizeBrain{
  int _qno = 0;
List<Questions> _quizz = [
  Questions(q:'Coffee is a berry-based beverage'  , a: true),
  Questions(q:'The capital of Australia is Sydney' , a: false),
  Questions(q:'The longest river in the world is the Amazon River' , a: false),
  Questions(q:'In a regular deck of cards, all kings have a mustache' , a: false),
  Questions(q:'There is no English word that rhymes with orange' , a: true),
  Questions(q:'The letter ‘A’ is the most commonly used in the English language' , a: false),
  Questions(q:'The first living animal sent into space were fruit flies' , a: true),
  Questions(q:'Among the letters of the alphabet, only the letter J is not included in the periodic table' , a: true),
];
bool getQs(){
  return _quizz[_qno].qText;
}
bool getAns(){
  return _quizz[_qno].qAns;
}
}