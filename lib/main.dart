import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pa_kelompok4/main_page.dart';
import 'package:pa_kelompok4/splashscreen.dart';
import 'package:get/get.dart';
import 'package:pa_kelompok4/main.dart';
import 'dart:async';
// import 'dart:html';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kelompok 4',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  Widget myContainer() {
    return Container(
      width: 100,
      height: 150,
      color: Color.fromARGB(255, 225, 226, 227),
      margin: EdgeInsets.all(5),
      child: Image.asset("assets/bunga3.png"),
    );
  }

  Widget myContainer2() {
    return Container(
      width: 100,
      height: 150,
      color: Color.fromARGB(255, 225, 226, 227),
      margin: EdgeInsets.all(5),
      child: Image.asset("assets/bunga4.png"),
    );
  }

  Widget myContainer3() {
    return Container(
      width: 100,
      height: 150,
      color: Color.fromARGB(255, 225, 226, 227),
      margin: EdgeInsets.all(5),
      child: Image.asset("assets/bunga5.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Katalog Bunga The Florist"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return MainPage();
                      }),
                    );
                  },
                  child: Text("More Info"),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 253, 141, 179)),
                ),
              ),
            ),
            Text(
              "      ",
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myContainer(),
                  myContainer2(),
                  myContainer3(),
                ],
              ),
            ),
            Text(
              "      ",
            ),
          ],
        ),
      ),
    );
  }
}
