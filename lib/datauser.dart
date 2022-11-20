import 'package:flutter/material.dart';
import 'objects/distuser.dart';

class DataUser extends StatelessWidget {
  final String datauser;
  DataUser(this.datauser);
  List<user> distuser = [

    user(
      user_id: 001,
      user_name: 'Ahmad Reyhandi',
      user_address: 'Jl. Ong',
      ),
    user(
      user_id: 002,
      user_name: 'ong',
      user_address: 'Jl. ong',
      ),
    user(
      user_id: 003,
      user_name: 'Ongbal',
      user_address: 'Jl. Ongmoment',
      ),

  ];


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('$datauser'),
      ),
      body: new MyDataUser(),
    );
  }
}

class MyDataUser extends StatefulWidget {
  MyDataUser({Key? key}) : super(key: key);
  @override
  _MyDataUserPageState createState() => new _MyDataUserPageState();
}

class _MyDataUserPageState extends State<MyDataUser> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Data User",
                      style: new TextStyle(
                          fontSize: 30.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins"),
                    )
                  ]),
              const Divider(color: Colors.black54),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Text(
                                    "No.",
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins"),
                                  ),
                                  new Text(
                                    "Nama",
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins"),
                                  ),
                                  new Text(
                                    "Keterangan",
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins"),
                                  )
                                ]),
                            new Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Text(
                                    "No.",
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins"),
                                  ),
                                  new Text(
                                    "Nama",
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins"),
                                  ),
                                  new Text(
                                    "Keterangan",
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins"),
                                  )
                                ]),
                          ]),
                      padding: const EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
                      alignment: Alignment.center,
                    )
                  ])
            ]),
        padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 1.0),
        alignment: Alignment.center,
      ),
    );
  }
}
