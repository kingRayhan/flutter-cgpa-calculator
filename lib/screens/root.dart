import 'package:cgpa_calculator/widgets/entry.dart';
import 'package:cgpa_calculator/widgets/header.dart';
import 'package:cgpa_calculator/widgets/result.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  RootScreen({Key key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Header(),
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Result(text: "cgpa", number: 2.60),
                SizedBox(width: 25),
                Result(text: "credits", number: 99),
              ],
            ),
          ),
          // Header end

          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 500,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Entry(),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black87,
        child: Icon(Icons.add),
      ),
    );
  }
}
