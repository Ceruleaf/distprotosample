import 'package:distr_app/sideBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'sideBar.dart';
import 'login_view.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<Application> {
  //String text = '';
  @override
  Widget build(BuildContext context) => Loginform();
}