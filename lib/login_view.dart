// import 'dart:html';
// import 'dart:ui';

// import 'package:casfet/constants.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'Bottombar.dart';
// import '../constants.dart';
// import 'register_view.dart';

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

void main() {
  runApp(MaterialApp(home: Loginform()));
}

class Loginform extends StatefulWidget {
  const Loginform({Key? key}) : super(key: key);

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  //final myController1 = TextEditingController();
  //final myController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 26, 45, 78),
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: <Widget>[
                _iconLogin(),
                _titleDescription(),
                _textField(),
                _buildButton(context),
              ]),
            )
          ],
        ),
      ),
    );
  }
}


/*
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 26, 45, 78),
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: <Widget>[
                _iconLogin(),
                _titleDescription(),
                _textField(),
                _buildButton(context),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
*/
Widget _iconLogin() {
  return Image.asset(
    "assets/images/esqbs.png",
    width: 150.0,
    height: 150.0,
  );
}

Widget _titleDescription() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "LOGIN",
        style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w600),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      Text(
        "BAROKAH",
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        controller: myController1,
        decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: Colors.white)),
        style: TextStyle(color: Colors.white),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        controller: myController2,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        onTap: () => {
          if (myController1.text == 'user' && myController2.text == 'user') {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()))}
          },

        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Login',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          "Belum punya akun? Register here",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
      // TextFormField(
      //   decoration: new InputDecoration(
      //     labelText: "Username",
      //     border:
      //         OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0),),
      //   ),
      // ),

      /*FlatButton(
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, RegisterPage.routeName);
        },
      ),*/
    ],
  );
}
