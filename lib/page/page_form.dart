//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:pa_kelompok4/Form/form_pelanggan.dart';
import 'package:pa_kelompok4/Form/login.dart';

class pageForm extends StatelessWidget {
  const pageForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 244, 244, 244),
      child: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Form",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          //Pelanggan
          Center(
            child: Container(
              width: 300,
              margin: EdgeInsets.all(20),
              child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(25),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Color.fromARGB(255, 255, 161, 192),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return pagePelanggan();
                      }),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage("assets/pelangan.png"),
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Form Pelanggan ',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //admin
          Center(
            child: Container(
              width: 300,
              margin: EdgeInsets.all(20),
              child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(25),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Color.fromARGB(255, 255, 161, 192),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return Login();
                      }),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage("assets/admin.png"),
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Menu Admin ',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
