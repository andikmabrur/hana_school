import 'package:flutter/material.dart';

class ActivationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final instruction = Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'To complete your phone number verification, please enter username and 10-digit activation code.',
        style: TextStyle(fontSize: 16.0),
      ),
    );

    final username = ListTile(
      leading: const Icon(Icons.people),
      title: new TextField(
        decoration: new InputDecoration(
          hintText: "Username",
        ),
      ),
    );

    final token = ListTile(
      leading: const Icon(Icons.message),
      title: new TextField(
        decoration: new InputDecoration(
          hintText: "Token",
        ),
      ),
    );

    final body = Container(
      child: new SingleChildScrollView(
        child: new ConstrainedBox(
          constraints: new BoxConstraints(),
          child: new Column(
            children: <Widget>[
              instruction,
              username,
              token,
            ],
          ),
        ),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: new Text("Activation"),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/RegistrationPage');
        },
        tooltip: 'Registration',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
