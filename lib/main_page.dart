import 'package:flutter/material.dart';
import 'package:pa_kelompok4/page/page_detail.dart';
import 'package:pa_kelompok4/page/page_form.dart';
import 'package:pa_kelompok4/page/page_home.dart';
import 'package:pa_kelompok4/detail_page.dart';
import 'package:pa_kelompok4/main.dart';
//import 'form.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    pageHome(),
    pageForm(),
    pageDetail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Florist"),
        backgroundColor: Colors.blue,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: "Forms",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Details",
          ),
        ],
      ),
    );
  }
}
