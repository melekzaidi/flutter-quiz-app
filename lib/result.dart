import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late final int score;

  final Function reset;

  String get resultPhrase {
    String text = "";
    if (score == 15) {
      text = "excelent";
    } else if (score == 10) {
      text = "moyen";
    } else if (score == 5) {
      text = "débutant";
    } else {
      text = "null";
    }
    return text;
  }

  Result(this.reset, this.score);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 35, color: Colors.red),
        )),
        Container(
          child: ElevatedButton(
              onPressed: () {
                reset();
              },
              child: Text("reset")),
        )
      ],
    );
  }
}
