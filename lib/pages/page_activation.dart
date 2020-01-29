import 'package:flutter/material.dart';
import 'package:hana_school/validation.dart';

class ActivationPage extends StatefulWidget {
  createState() {
    return ActivationPageState();
  }
}

class ActivationPageState extends State<ActivationPage> with Validation {
  final formKey = GlobalKey<FormState>();

  // DEFINE VARIABLE
  String strUsername = '';
  String strToken = '';

  @override
  Widget build(BuildContext context) {
    final instruction = Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'To complete your verification, please enter username and 10-digit activation code.',
        style: TextStyle(fontSize: 16.0),
      ),
    );

    final username = ListTile(
      leading: const Icon(Icons.people),
      title: new TextFormField(
        decoration: new InputDecoration(
          hintText: "Username",
        ),
        validator: validateUsername,
        onSaved: (String value) {
          strUsername = value;
        },
      ),
    );

    final token = ListTile(
      leading: const Icon(Icons.message),
      title: new TextFormField(
        decoration: new InputDecoration(
          hintText: "Token",
        ),
        validator: validateToken,
        onSaved: (String value) {
          strToken = value;
        },
      ),
    );

    final button = RaisedButton(
      color: Colors.blue,
      onPressed: () {
        if (formKey.currentState.validate()) {
          Navigator.pushNamed(context, '/RegistrationPage');
        }
      },
      child: Text('Next'),
    );

    final body = Container(
      child: new SingleChildScrollView(
        child: new ConstrainedBox(
          constraints: new BoxConstraints(),
           child: new Form(
             key: formKey,
            child: new Column(
              children: <Widget>[instruction, username, token, button],
            ),
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
