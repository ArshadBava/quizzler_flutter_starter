import 'package:flutter/material.dart';
import 'questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> score = [];
  int qno = 0;

  // List<String> quizz = [
  //   'Coffee is a berry-based beverage',
  //   'The capital of Australia is Sydney',
  //   'The longest river in the world is the Amazon River',
  //   'In a regular deck of cards, all kings have a mustache',
  //   'There is no English word that rhymes with orange',
  //   'The letter ‘A’ is the most commonly used in the English language',
  //   'The first living animal sent into space were fruit flies',
  //   'Among the letters of the alphabet, only the letter J is not included in the periodic table',

  List<bool> qAns = [
    true,
    false,
    false,
    false,
    true,
    false,
    true,
    true,

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
         Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizz[qno].qText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child:const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool crtAns = quizz[qno].qAns;
                if (crtAns == true) {
                  setState(() {
                    score.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                    qno++;
                  });
                } else {
                  setState(() {
                    score.add(
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        )
                    );
                    qno++;
                  });
                }
              }
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool crtAns = quizz[qno].qText;
                if (crtAns == false) {
                  setState(() {
                    score.add(
                      Icon(
                        Icons.close,
                        color: Colors.green,
                      ),
                    );
                    qno++;
                  });
                } else {
                  setState(() {
                    score.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                    qno++;
                  });
                }
              }
            ),
          ),
        ),
        Row(
          children: score
        ),
      ],
    );
  }
}
//Questions and answers for the quiz =>
//'Coffee is a berry-based beverage' : true
//'The capital of Australia is Sydney' : false
//'The longest river in the world is the Amazon River' : false
//'In a regular deck of cards, all kings have a mustache' : false
//'There is no English word that rhymes with orange' : true
//'The letter ‘A’ is the most commonly used in the English language' : false
//'The first living animal sent into space were fruit flies' : true
//'Among the letters of the alphabet, only the letter J is not included in the periodic table' : true