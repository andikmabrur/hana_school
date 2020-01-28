import 'package:flutter/material.dart';
import 'package:hana_school/widgets/input_field.dart';

class StdRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = Container(
      padding: EdgeInsets.only(
          top: 20.0,
          right: 15,
          left: 15,
          bottom: 10.0),
      child: new SingleChildScrollView(
        child: new ConstrainedBox(
          constraints: new BoxConstraints(),
          child: new Column(
            children: <Widget>[
              InputField(label: "Username", content: "username"),
              SizedBox(height: 10.0),
              InputField(label: "Password", content: "password"),
              SizedBox(height: 10.0),
              InputField(label: "Date of birth", content: "03/04/2000"),
              SizedBox(height: 10.0),
              InputField(label: "Email", content: "anything@site.com"),
              SizedBox(height: 10.0),
              InputField(label: "Password", content: "********"),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: new Text("Student Registration"),
      ),
      body: body,
    );
  }
}
