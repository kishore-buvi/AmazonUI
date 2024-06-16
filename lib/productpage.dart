import 'package:flutter/material.dart';

class Productpage extends StatefulWidget {
  const Productpage({super.key});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  String Value = '';
  int rupees = 45;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          product_method(),
        ],
      ),
    );
  }

  Card product_method() {
    return Card(
      child: Container(
        child: Container(
          margin: EdgeInsets.only(left: 5),
          color: Colors.grey,
          height: 900,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 350,
                height: 200,
                color: Color.fromARGB(255, 248, 248, 247),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('images/download.jpeg'),
                    ),
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(255, 169, 149, 77),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                            'productname',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          )),
                          Expanded(
                              child: Text(
                            'cola-$quantity',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Color.fromARGB(255, 235, 245, 239),
                                fontSize: 30,
                                fontStyle: FontStyle.italic),
                          )),
                          Expanded(
                              child: Container(
                            height: 2,
                            color: Color.fromARGB(255, 237, 202, 4),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: Text(
                                "Add item",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )),
                          Container(
                            margin: EdgeInsets.only(top: 1),
                            child: Text(
                              'rs.${rupees * quantity}',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Container(
                            height: 36,
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
