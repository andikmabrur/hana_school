import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final avatar = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/admin.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Admin',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    // final body = Container(
    //   width: MediaQuery.of(context).size.width,
    //   padding: EdgeInsets.all(28.0),
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(colors: [
    //       Colors.blue,
    //       Colors.lightBlueAccent,
    //     ]),
    //   ),
    //   child: Column(
    //     children: <Widget>[
    //       avatar,
    //       welcome,
    //       lorem,
    //     ],
    //   ),
    // );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: new SingleChildScrollView(
        child: new ConstrainedBox(
          constraints: new BoxConstraints(),
          child: new Column(
            children: <Widget>[
              avatar,
              welcome,
              lorem,
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: body,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/ActivationPage');
        },
        tooltip: 'Activation',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
