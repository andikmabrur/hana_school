import 'package:flutter/material.dart';
import 'package:hana_school/pages/page_home.dart';
import 'package:hana_school/pages/page_activation.dart';
import 'package:hana_school/pages/page_registration.dart';
import 'package:hana_school/pages/page_login.dart';
import 'package:hana_school/pages/page_std_registration.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
    title: "Hanacaraka",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: <String, WidgetBuilder>{
      '/HomePage': (BuildContext context) => new HomePage(),
      '/ActivationPage': (BuildContext context) => new ActivationPage(),
      '/RegistrationPage': (BuildContext context) => new RegistrationPage(),
      '/LoginPage': (BuildContext context) => new LoginPage(),
      '/StdRegistrationPage': (BuildContext context) => new StdRegistrationPage(),
    },
  ));
}
