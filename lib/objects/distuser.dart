import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class user {
  var user_name;
  var user_id;
  var user_address;
  //var user_img;
  //var user_category;
  //var user_sold;
   
  
  user ({this.user_name, user_id, user_address});
}

class DatadistUser extends StatelessWidget {
  DatadistUser({Key? key}) : super(key: key);

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
    return
    ListView.builder(
                                                      itemCount: distuser.length,
                                                      itemBuilder: (BuildContext context, int index){
                                                        return Row(children: [
                                                        Expanded(
                                                          flex: 1,
                                                          child:  Text("${distuser[index].user_id}", textAlign: TextAlign.center,
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
                                                          '${distuser[index].user_name}',
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
                                                              '${distuser[index].user_address}',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  //fontWeight: FontWeight.bold,
                                                                  fontSize: 20,
                                                                  color: Colors.black),
                                                            ),
                                                        ),
                                                      ],);}
                                                    );
  }
}