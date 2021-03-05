import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var _totalScore = 0;
  var _questionIndex = 0;

  void _resetHanderler() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  var _questions = [
    {
      'questionText': 'Who is the president of Nigeria',
      'answers': [
        {'text': 'Babangida', 'score': 0},
        {'text': 'Abacha', 'score': 0},
        {'text': 'Donald Trump', 'score': 0},
        {'text': 'Nigeria don\'t have a president', 'score': 10},
      ]
    },
    {
      'questionText': 'Who is the sponsor of bandits in Nigeria',
      'answers': [
        {'text': 'Buhari', 'score': 1},
        {'text': 'The Fulani', 'score': 3},
        {'text': 'Yahaya Bello', 'score': 4},
        {'text': 'All of the above', 'score': 5},
      ]
    },
    {
      'questionText': 'Who ordered the killings of EndSARS Protesters',
      'answers': [
        {'text': 'Buhari', 'score': 5},
        {'text': 'Fashola', 'score': 2},
        {'text': 'Gov Sonwolu', 'score': 3},
        {'text': 'Donald Trump', 'score': 0},
      ]
    },
    {
      'questionText': 'Rate Buhari as a president of Nigeria',
      'answers': [
        {'text': '0%', 'score': 4},
        {'text': '10%', 'score': 0},
        {'text': 'Average', 'score': 0},
        {'text': 'Above average', 'score': 0},
      ]
    },
    {
      'questionText': 'Describe Buhari in one word',
      'answers': [
        {'text': 'Mumu', 'score': 5},
        {'text': 'Okponu', 'score': 4},
        {'text': 'Yeye', 'score': 3},
        {'text': 'Mumu+', 'score': 3},
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return _questionIndex < _questions.length
        ? Quiz(
            answerQuestions: _answerQuestions,
            questionIndex: _questionIndex,
            questions: _questions,
          )
        : Result(_totalScore, _resetHanderler);
  }
}
