// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'productmanager.dart';
import 'sideBar.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottombar',
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  PageController? _myPage;
  var selectedPage;

  @override
  void initState() {
    super.initState();
    _myPage = PageController(initialPage: 1);
    selectedPage = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 2, 101),
        title: Text('Damar Kyun~~'),
        titleSpacing: 80,
        elevation: 25,
        toolbarOpacity: 0.7,),
      backgroundColor: Color.fromARGB(250,250,250,255),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _myPage,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text("Another Page"),
                ],
              ),
            ),    

            //here we call homepage.dart

            Homepage(),

            //=========================================================

            Container(
              margin: EdgeInsets.only(top: 50),
                child: 
                ProductManager()
                /*TextFormField(
                  decoration: new InputDecoration(
                    hintText: "masukan nama lengkap anda",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  
                ),Text("lol"),
                */
              ,
            ),
            Container(
                child: Text(
              "\n \nٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُۥ مَا فِى ٱلسَّمَٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱلسَّمَٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ",
              style: TextStyle(fontSize: 30),
            )),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 0, 2, 101),
         
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: selectedPage == 1 ? Colors.blue : Colors.white,
                onPressed: () {
                  _myPage?.jumpToPage(1);
                  setState(() {
                    selectedPage = 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.star),
                color: selectedPage == 2 ? Colors.blue : Colors.white,
                onPressed: () {
                  _myPage?.jumpToPage(2);
                  setState(() {
                    selectedPage = 2;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                ),
                color: selectedPage == 3 ? Colors.blue : Colors.white,
                onPressed: () {
                  _myPage?.jumpToPage(3);
                  setState(() {
                    selectedPage = 3;
                  });
                },
              ),
            ],
          ),
        ),
         drawer: const NavigationDrawer(),);
  }
}