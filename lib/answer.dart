import 'package:flutter/material.dart';

class Ansewer extends StatelessWidget {
  final Function selecthanler;
  final String answerText;
  Ansewer(this.selecthanler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(10),
      width: double.infinity,

      // ignore: prefer_const_constructors
      child: ElevatedButton(
          child: Text(this.answerText,
              style: TextStyle(
                fontSize: 28,
              )),
          onPressed: () {
            selecthanler();
          }),
    );
  }
}
