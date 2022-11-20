import 'package:flutter/material.dart';

class DataPelanggan extends StatelessWidget {
  final String datapelanggan;
  DataPelanggan(this.datapelanggan);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('$datapelanggan'),
      ),
      body: new Center(
        child: new Text('$datapelanggan'),
      ),
    );
  }
}
