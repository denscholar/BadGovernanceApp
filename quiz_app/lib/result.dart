import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class Result extends StatefulWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  ConfettiController myController;

  String get resultPhrase {
    var resultText;
    if (widget.resultScore <= 2) {
      resultText = 'Congratulations!, You have just won yourself an award';
      print(widget.resultScore);
      myController.play();
    } else if (widget.resultScore >= 5) {
      resultText = 'Congratulations!, You just won yourself an award';
      myController.play();
      // } else if (widget.resultScore >= 8) {
      //   resultText = 'Please log out of this application or...';
    } else {
      resultText = 'You are doing well';
    }
    return resultText;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController = ConfettiController(
      duration: Duration(seconds: 5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConfettiWidget(
            confettiController: myController,
            blastDirection: 5,
            emissionFrequency: 0.05,
            numberOfParticles: 10,
            maxBlastForce: 10,
            shouldLoop: true,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('RESTART',
                style: TextStyle(
                  fontSize: 30,
                )),
            onPressed: widget.resetHandler,
          ),
        ],
      ),
    );
  }
}
