import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'Wow Biftu... You are awesome and innocent!';
    } else if (resultScore <= 12) {
        resultText = 'Damn Biftu you\'re Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'Haha Biftu! You are ... strange?!';
    }
    else {
      resultText = 'lol Biftu... You are so bad!';
    }
    return resultText; 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            style: ButtonStyle (
              foregroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: resetHandler,)
        ],
      ),
    );
  }
}