import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = ListTile(
      leading: const Icon(Icons.person),
      title: new TextField(
        decoration: new InputDecoration(
          hintText: "Name",
        ),
      ),
    );

    final phone = ListTile(
      leading: const Icon(Icons.phone),
      title: new TextField(
        decoration: new InputDecoration(
          hintText: "Phone",
        ),
      ),
    );

    final email = ListTile(
      leading: const Icon(Icons.email),
      title: new TextField(
        decoration: new InputDecoration(
          hintText: "Email",
        ),
      ),
    );

    final password = ListTile(
      leading: const Icon(Icons.lock),
      title: new TextField(
        obscureText: true,
        decoration: new InputDecoration(
          hintText: "Password",
        ),
      ),
    );

    final body = Container(
      child: new SingleChildScrollView(
        child: new ConstrainedBox(
          constraints: new BoxConstraints(),
          child: new Column(
            children: <Widget>[
              name,
              phone,
              email,
              password,
            ],
          ),
        ),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: new Text("Registration"),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/LoginPage');
        },
        tooltip: 'Home',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
