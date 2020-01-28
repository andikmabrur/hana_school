import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String content;

  InputField({this.label, this.content});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            Container(
              width: 110,
              child: Text(
                "$label",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 140,
              color: Colors.blue[50],
              child: TextField(
                style: TextStyle(
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 12.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                  hintText: "$content",
                  fillColor: Colors.lightBlueAccent,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
