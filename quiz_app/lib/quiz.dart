import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;
  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 50.0,
            left: 20.0,
            right: 20.0,
            bottom: 20.0,
          ),
          child: Text(
            questions[questionIndex]['questionText'],
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 5.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Container(
              width: double.infinity,
              child: RaisedButton(
                  color: Colors.amber,
                  child: Text(answer['text'], style: TextStyle(fontSize: 20.0)),
                  onPressed: () {
                    answerQuestions(answer['score']);
                  }),
            ),
          );
        }).toList()
      ],
    );
  }
}

// RaisedButton _buildRaisedButton(
//     {String answer, Function answerQuestions, Color colors}) {
//   return RaisedButton(
//     color: colors,
//     child: Text(answer),
//     onPressed: answerQuestions,
//   );
// }
