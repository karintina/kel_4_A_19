//import 'dart:html';
import 'package:flutter/material.dart';

class pageHome extends StatelessWidget {
  const pageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Color.fromARGB(255, 244, 244, 244),
        child: Column(children: [
          Text(''),
          Text(
            'Tentang Kami ',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
              ),
            ),
          ),
          Image.asset(
            "assets/logo.png",
            width: 200,
            height: 200,
          ),
          Icon(Icons.home),
          Text(
            'Jalan pahlawan no 1',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(""),
          Icon(Icons.contact_phone),
          Text(
            '081242278307',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(""),
          Icon(Icons.mail),
          Text(
            'TheFlorist04@gmail.com',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    ));
  }
}
