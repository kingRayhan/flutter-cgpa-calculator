import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({this.title = "cgpa calculator"});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Text(
        this.title.toUpperCase(),
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
