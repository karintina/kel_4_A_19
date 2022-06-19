//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_kelompok4/form/menuadmin.dart';

class Loginadmin extends StatelessWidget {
  const Loginadmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Login Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "Admin";
  String password = "kelompok4";
  String alert = " Siap Login ";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void prosesLogin() {
    if (usernameInput.text == username && passwordInput.text == password) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MenuAdmin(username)));
    } else {
      setState(() {
        alert = "username atau password salah";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Color.fromARGB(255, 232, 231, 231),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selamat Datang Admin,Silahkan Masuk  ",
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              SizedBox(
                height: 20,
              ),
              Text(alert),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: usernameInput,
                      /*validator: (value){
                        if(value.){
                          return "isi username anda";
                        }
                        return null;
                      },*/
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 40,
                        ),
                        hintText: "Masukkan Username",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordInput,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 40,
                        ),
                        hintText: "Masukkan Password",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.blue,
                      elevation: 5,
                      child: Container(
                        height: 50,
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () => prosesLogin(),
                          child: Center(
                            child: Text(
                              "Masuk",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
