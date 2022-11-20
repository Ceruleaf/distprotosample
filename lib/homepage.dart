
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                child: 
                Wrap(
                  children: [
                    Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 25, top: 20),
                        alignment: Alignment.center,
                        child: 
                        Wrap(
                          children: [
                            Row(children: [
                              Text("Toko 光", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                              /*
                              RaisedButton(
                                onPressed: () {
                                  _myPage?.jumpToPage(0);
                                  setState(() {
                                    selectedPage = 0;
                                  });
                                },
                                child: Text("Go to another page"),
                              ),
                              */
                            ]),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Text("Summary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
                            Row(
                              children: [
                                Column(
                                  children: [
                                                          Container(
                                                            margin: const EdgeInsets.only(
                                                                right: 10, bottom: 10),
                                                            child: Wrap(
                                                              children: [
                                                                Card(
                                                                  elevation: 18,
                                                                  shadowColor: Color.fromARGB(255, 27,91,255),
                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)), 
                                                                  color: Color.fromARGB(255, 27,91,255),
                                                                  //this is the phone icon
                                                                  child: 
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 40.0),
                                                                    child: Row(children: [
                                                                      //Padding(padding: EdgeInsets.all(2)),
                                                                      /*
                                                                      Icon(
                                                                        Icons.phone,
                                                                        size: 30,
                                                                        color: Colors.blue,
                                                                      ),
                                                                      */
                                                                      Padding(
                                                                          padding: EdgeInsets.only(left: 0)),
                                                                      Text(
                                                                        'Pendapatan \n \n \nRp 700.000',
                                                                        textAlign: TextAlign.left,
                                                                        style: TextStyle(
                                                                            //fontWeight: FontWeight.bold,
                                                                            fontSize: 20,
                                                                            color: Colors.white),
                                                                      )
                                                                    ]),
                                                                  ),
                                                                ),
                                                                Card(
                                                                  elevation: 18,
                                                                  shadowColor: Color.fromARGB(255,255,63,94),
                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)), 
                                                                  color: Color.fromARGB(255,255,63,94),
                                                                  //this is the phone icon
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 40.0),
                                                                    child: Row(children: [
                                                                      //Padding(padding: EdgeInsets.all(2)),
                                                                      /*
                                                                      Icon(
                                                                        Icons.phone,
                                                                        size: 30,
                                                                        color: Colors.blue,
                                                                      ),
                                                                      */
                                                                      Padding(
                                                                          padding: EdgeInsets.only(left: 0)),
                                                                      Text(
                                                                        'Placeholder \n \n \nRp 700.000',
                                                                        textAlign: TextAlign.left,
                                                                        style: TextStyle(
                                                                            //fontWeight: FontWeight.bold,
                                                                            fontSize: 20,
                                                                            color: Colors.white),
                                                                      )
                                                                    ]),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                  SizedBox(
                                        height: 20,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            

                             

                          ],
                        )),
                    
                    

              ],
            ),
                  
                Container(
                  //alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 10, left: 25),
                    child: Text(
                      "History",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                                      Container(

                                        margin: const EdgeInsets.only(right: 25, bottom: 10, left: 25),
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
                                                        child:   Icon(Icons.fastfood,
                                                        size: 35,
                                                        color:Color.fromARGB(255, 0, 2, 101)
                                                      ),
                                                      
                                                                
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Text(
                                                        'Snack',
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
                                                            'Rp 250.000',
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
                                                    ],)
                                                  
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
                  ],
                ),
            
            
            );
  }
}