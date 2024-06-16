import 'package:application_1/productpage.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  List values = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 20,
                height: 20,
              ),
              newMethod('images/download (1).jpeg', 'pepsi'),
              SizedBox(
                width: 20,
                height: 20,
              ),
              newMethod('images/download (2).jpeg', 'mt.dew'),
              SizedBox(
                width: 20,
                height: 20,
              ),
              newMethod('images/download (3).jpeg', 'cardiac'),
              SizedBox(
                width: 20,
                height: 20,
              ),
              newMethod('images/download (2).jpeg', 'mt.dew'),
              SizedBox(
                width: 20,
                height: 20,
              ),
              newMethod('images/download.jpeg', 'coco'),
            ],
          ),
        ));
  }

  Container newMethod(String image_location, String product_name) {
    return Container(
      width: 350,
      height: 200,
      color: Color.fromARGB(255, 248, 248, 247),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(image_location),
          ),
          Expanded(
              child: Container(
            color: Color.fromARGB(255, 169, 149, 77),
            child: Column(
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
                  product_name,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 235, 245, 239),
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                )),
                Expanded(
                    child: Container(
                  height: 20,
                  color: Color.fromARGB(255, 237, 202, 4),
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Productpage()))
                    },
                    child: Text(
                      "add to cart",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
