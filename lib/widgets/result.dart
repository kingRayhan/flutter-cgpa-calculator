import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final double number;
  const Result({@required this.text, @required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      color: Colors.black87,
      padding: EdgeInsets.all(15),
      child: Column(children: [
        Text(
          this.text.toUpperCase(),
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          "${this.number}",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
