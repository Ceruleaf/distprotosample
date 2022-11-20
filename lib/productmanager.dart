// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'objects/product.dart';

class ProductManager extends StatefulWidget {
  const ProductManager({Key? key}) : super(key: key);

  @override
  State<ProductManager> createState() => _ProductManager();
}

class _ProductManager extends State<ProductManager> {
  late TextEditingController _controller;

  List<Product> produkToko = [
    Product(
        product_name: "Beng-beng",
        product_quantity: 2014,
        product_price: 2000,
        product_sold: 20,
        product_img: "assets/images/bengbeng.png",
        product_category: "Food"),
    Product(
        product_name: "Milku",
        product_quantity: 1000,
        product_price: 4000,
        product_sold: 10,
        product_img: "assets/images/milku.jpg",
        product_category: "Drink"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
    Product(
        product_name: "Beras",
        product_quantity: 9000,
        product_price: 15000,
        product_sold: 90,
        product_img: "assets/images/beras.jpg",
        product_category: "Sembako"),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      //padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: 
      
      ListView.builder(
        itemCount: produkToko.length,
        itemBuilder: (BuildContext context, int index){
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: 
          ClipRRect(
                   borderRadius: BorderRadius.circular(22),
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset('${produkToko[index].product_img}',
                                //https://www.themoviedb.org/t/p/w220_and_h330_face/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg
                                //https://www.themoviedb.org/t/p/w440_and_h660_face/${movieList[index].posterPath.toString()}
                                width: 120,
                                height: 80,
                                fit: BoxFit.contain,
                                
                                ),
                                decoration: new BoxDecoration(
                                  //borderRadius: new BorderRadius.circular(16.0),
                                  color: Color.fromARGB(250, 210, 235, 247),
                                ),
                              ),
                            
      
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${produkToko[index].product_name}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 4),
                                            Row(
                                              children: [
                                                Icon(
                                                  CupertinoIcons.cube_box_fill,
                                                  color: Colors.black,
                                                  size: 15,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                
                                                Text(
                                                  'Stok: ${produkToko[index].product_quantity}',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Icon(
                                                  Icons.add_shopping_cart,
                                                  color: Colors.black,
                                                  size: 15,
                                                ),
                                                Text(
                                                    'Terjual: ${produkToko[index].product_sold}'),
                                              ],
                                            ),
                                            /*
                                            SizedBox(height: 4),
                                            Text(
                                              'Overview: ',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            ),
                                            */
                                          ]),
                                      
                                    )),

                                    Container(
                                      /*
                                      child:
                                      TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Password',
                                        ),
                                      ),
                                              child: TextField(
                                                controller: _controller,
                                                onSubmitted: (String value) async {
                                                  await showDialog<void>(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text('Thanks!'),
                                                        content: Text(
                                                            'You typed "$value", which has length ${value.characters.length}.'),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(context);
                                                            },
                                                            child: const Text('OK'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                              */
                            )

                                  
                                  
                                  ],
                                
                                ),
                              )
                            ]),
                          ),
                            
                        ),
       decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 0.5)
                  ),
                ],
              ),
      );
      /*
      ListView(children: <Widget>[
        new ListTile(
          title: Text('List wjet1'),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {},
        ),
        new ListTile(
          title: Text('List wjet2'),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {},
        ),
        new ListTile(
          title: Text('List wjet3'),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {},
        ),
      ]
      
      
      ),
      */


      /*  == THIS BLOCK IS IMPLEMENTED WHEN PRODUCT OBJECT IS IMPLEMENTED ==
      ListView.builder(
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
              child: Card( //this is the phone icon
                child: 
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        //Padding(padding: EdgeInsets.all(2)),
                        Icon(
                          Icons.print,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Padding(padding: EdgeInsets.only(left: 15)),
                        Text('Item number: $index', textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 29, 42, 138)),)
                      ]),
                  ),
              ),
               decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 50.0,
                  ),
                ],
              ),
            );

        }
      )
    */
    
  }));

    /*  == THIS BLOCK IS IMPLEMENTED WHEN PRODUCT OBJECT IS IMPLEMENTED ==
ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(movieList[index].id)))
                },
              child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.network('https://image.tmdb.org/t/p/w92${movieList[index].posterPath.toString()}',
                            //https://www.themoviedb.org/t/p/w220_and_h330_face/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg
                            //https://www.themoviedb.org/t/p/w440_and_h660_face/${movieList[index].posterPath.toString()}
                            width: 120,
                            height: 150,
                            fit: BoxFit.contain,),

                            Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10),
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${movieList[index].originalTitle.toString()}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(height: 4),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              
                                              Text(
                                                '${movieList[index].voteAverage.toString()}',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Icon(
                                                Icons.calendar_month,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              Text(
                                                  '${movieList[index].releaseDate.toString()}'),
                                            ],
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            'Overview: ${movieList[index].overview.toString()}',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                          ),

                                        ]),
                                    
                                  )),
                                ],
                              ),
                            )
                          ]),
                        ),
                          
                      ),
            );
                  }
        )
    */

    

  }
}
