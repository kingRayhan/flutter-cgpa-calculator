import 'package:flutter/material.dart';

class Entry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(hintText: "Course Name"),
        ),
      ),
      Expanded(
        child: TextField(
          decoration: InputDecoration(hintText: "Course Name"),
        ),
      ),
      Expanded(
        child: TextField(
          decoration: InputDecoration(hintText: "Course Name"),
        ),
      ),
      Expanded(
        child: IconButton(
          icon: Icon(Icons.close, color: Colors.red),
          onPressed: () {},
        ),
      )
    ]);
  }
}
