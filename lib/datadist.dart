import 'package:flutter/material.dart';
import 'objects/distuser.dart';

class DataUser extends StatelessWidget {
  //final String datauser;
  //DataUser(this.datauser);
  


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Flutterefido'),
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
        child: 

        Wrap(
                  children: [

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: const Text("List User", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)),


                                      Container(

                                        margin: const EdgeInsets.only(right: 10, bottom: 10, left: 10, top: 20),
                                        child: Wrap(
                                          children: [
                                            Card(
                                              elevation: 18,
                                              shadowColor: Color.fromARGB(255, 0, 0, 0),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25.0)),
                                              color: Colors.white,
                                              //this is the phone icon
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20.0,
                                                    bottom: 20.0,
                                                    left: 20.0,
                                                    ),
                                                child: 
                                                Wrap(
                                                  
                                                  children: [
                                                    
                                                    SizedBox(
                                                      height: 40,
                                                    ),

                                                    Row(children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child:   Text("ID",textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                                //fontWeight: FontWeight.bold,
                                                                fontSize: 20,
                                                                color: Colors.black)),
                                                      
                                                                
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Text(
                                                        'Nama User',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            //fontWeight: FontWeight.bold,
                                                            fontSize: 20,
                                                            color: Colors.black),
           
                                                      ),
                                                        
                                                      ),
                                                      Expanded(
                                                        flex: 5,
                                                        child: 
                                                        Text(
                                                            'Alamat',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                //fontWeight: FontWeight.bold,
                                                                fontSize: 20,
                                                                color: Colors.black),
                                                          ),
                                                      ),
                                                    ],),

                                                    Row(
                                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                      SizedBox(
                                                        width: 330,
                                                        child: Divider(
                                                          thickness: 1.5,
                                                          //indent: 10,
                                                          endIndent: 20,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],),
                                                    
                                                    Row(children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child:  Icon(Icons.food_bank_outlined,
                                                        size: 35,
                                                            color:
                                                                Color.fromARGB(255, 0, 2, 101)),
                                                                
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Text(
                                                        'Sembako',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            //fontWeight: FontWeight.bold,
                                                            fontSize: 20,
                                                            color: Colors.black),
           
                                                      ),
                                                        
                                                      ),

                                                      Expanded(
                                                        flex: 4,
                                                        child: 
                                                        Text(
                                                            'Rp 500.000',
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                                //fontWeight: FontWeight.bold,
                                                                fontSize: 20,
                                                                color: Colors.black),
                                                          ),
                                                      ),
                                                    ],),

                                                    Row(
                                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                      SizedBox(
                                                        width: 330,
                                                        child: Divider(
                                                          thickness: 1.5,
                                                          //indent: 10,
                                                          endIndent: 20,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],),
                                                    
                                                    Row(children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child:  Icon(Icons.monetization_on_rounded,
                                                        size: 35,
                                                            color:
                                                                Colors.red),
                                                                
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Text(
                                                        'Restock',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            //fontWeight: FontWeight.bold,
                                                            fontSize: 20,
                                                            color: Colors.black),
           
                                                      ),
                                                        
                                                      ),

                                                      Expanded(
                                                        flex: 4,
                                                        child: 
                                                        Text(
                                                            'Rp -800.000',
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                                //fontWeight: FontWeight.bold,
                                                                fontSize: 20,
                                                                color: Colors.black),
                                                          ),
                                                      ),
                                                    ],),

                                                    Row(
                                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                      SizedBox(
                                                        width: 330,
                                                        child: Divider(
                                                          thickness: 1.5,
                                                          //indent: 10,
                                                          endIndent: 20,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],),

                                                    Row(children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child:  Icon(Icons.money_rounded,
                                                        size: 35,
                                                            color:
                                                                Colors.red),
                                                                
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Text(
                                                        'Prive',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            //fontWeight: FontWeight.bold,
                                                            fontSize: 20,
                                                            color: Colors.black),
           
                                                      ),
                                                        
                                                      ),

                                                      Expanded(
                                                        flex: 4,
                                                        child: 
                                                        Text(
                                                            'Rp -800.000',
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                                //fontWeight: FontWeight.bold,
                                                                fontSize: 20,
                                                                color: Colors.black),
                                                          ),
                                                      ),
                                                    ],),

                                                    DatadistUser(),
                                                    
                                                    
                                                  
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                    //Text("data"),
                  ],
                ),

        //padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 1.0),
        //alignment: Alignment.center,
      ),
    );
  }
}
