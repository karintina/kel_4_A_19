import 'package:flutter/material.dart';
import 'package:pa_kelompok4/Form/form_pelanggan.dart';
import 'package:pa_kelompok4/custom_alert.dart';
import 'package:pa_kelompok4/counter_controller.dart';
import 'package:pa_kelompok4/main_page.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  //final TextController tc = Get.find();
  final TextController tc = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Halo, pelanggan ${tc.pelanggan}'),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert_sharp),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 199, 233),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Container(
                width: 350,
                height: 250,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bunga3.png"),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Elizabeth",
                style: TextStyle(
                  fontSize: 25,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Center(
              child: Text(
                "Elizabeth adalah mawar yang menarik bunga besar 10 sentimeter lebar kira-kira, dengan jumlah kelopak yang bisa berkisar antara 26 sampai 40. Bunganya memiliki bagian tengah yang tinggi dan keharuman mawar yang manis dan lembut, ini berkisar dari kelopak tunggal hingga bunga ganda.",
                style: TextStyle(
                  wordSpacing: 1,
                  height: 3,
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
                child: Text(
              "Rp 1.140.000",
              style: TextStyle(
                wordSpacing: 1,
                height: 3,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 252, 175, 201)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return pagePelanggan();
                      }),
                    );
                  },
                  child: Text(
                    "BELI",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage2 extends StatelessWidget {
  DetailPage2({Key? key}) : super(key: key);

  final TextController tc = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Halo, pelanggan ${tc.pelanggan}'),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert_sharp),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 199, 233),
      body: Center(
        child: ListView(
          children: [
            Container(
              width: 350,
              height: 250,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bunga5.png"),
                ),
              ),
            ),
            Center(
              child: Text(
                "Anne",
                style: TextStyle(
                  fontSize: 25,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 245, 150, 181),
                ),
              ),
            ),
            Center(
              child: Text(
                "Anne adalah bunga yang sangat cantik dan indah, bunga ini cocok untuk diberikan kepada pasangan sebagai bentuk kasih sayang. Bunganya memiliki bagian tengah yang tinggi dan keharuman mawar yang manis dan lembut, ini berkisar dari kelopak tunggal hingga bunga ganda.",
                style: TextStyle(
                  wordSpacing: 1,
                  height: 3,
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
                child: Text(
              "Rp 349.000",
              style: TextStyle(
                wordSpacing: 1,
                height: 3,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 252, 175, 201)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return pagePelanggan();
                      }),
                    );
                  },
                  child: Text(
                    "BELI",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage3 extends StatelessWidget {
  DetailPage3({Key? key}) : super(key: key);

  final TextController tc = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Halo, pelanggan ${tc.pelanggan}'),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert_sharp),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 199, 233),
      body: Center(
        child: ListView(
          children: [
            Container(
              width: 350,
              height: 250,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bunga7.png"),
                ),
              ),
            ),
            Center(
              child: Text(
                "Scarlett",
                style: TextStyle(
                  fontSize: 25,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 245, 150, 181),
                ),
              ),
            ),
            Center(
              child: Text(
                "Scarlet salvia (Salvia splendens) atau biasa juga disebut scarlet sage, red sage, dan tropical sage, adalah tanaman perennial yang berasal dari Brazil, hidup pada ketinggian 2000 sampai 3000 meter diatas permukaan laut, dimana sepanjang tahun suhunya hangat dan juga kelembapan tinggi.",
                style: TextStyle(
                  wordSpacing: 1,
                  height: 3,
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
                child: Text(
              "Rp 499.000",
              style: TextStyle(
                wordSpacing: 1,
                height: 3,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 252, 175, 201)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return pagePelanggan();
                      }),
                    );
                  },
                  child: Text(
                    "BELI",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage4 extends StatelessWidget {
  DetailPage4({Key? key}) : super(key: key);

  final TextController tc = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Halo, pelanggan ${tc.pelanggan}'),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert_sharp),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 199, 233),
      body: Center(
        child: ListView(
          children: [
            Container(
              width: 350,
              height: 250,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bunga4.png"),
                ),
              ),
            ),
            Center(
              child: Text(
                "Regina",
                style: TextStyle(
                  fontSize: 25,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 245, 150, 181),
                ),
              ),
            ),
            Center(
              child: Text(
                "Regina adalah bunga seperti mawar bewarna pink muda, sangat cantik dipandang dan melihatnya membuat merasa kedamaian. Bunga ini dimana sepanjang tahun suhunya hangat dan juga kelembapan tinggi.",
                style: TextStyle(
                  wordSpacing: 1,
                  height: 3,
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
                child: Text(
              "Rp 349.000",
              style: TextStyle(
                wordSpacing: 1,
                height: 3,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 252, 175, 201)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return pagePelanggan();
                      }),
                    );
                  },
                  child: Text(
                    "BELI",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage5 extends StatelessWidget {
  DetailPage5({Key? key}) : super(key: key);

  final TextController tc = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Halo, pelanggan ${tc.pelanggan}'),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert_sharp),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 199, 233),
      body: Center(
        child: ListView(
          children: [
            Container(
              width: 350,
              height: 250,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bunga8.png"),
                ),
              ),
            ),
            Center(
              child: Text(
                "Diana",
                style: TextStyle(
                  fontSize: 25,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 245, 150, 181),
                ),
              ),
            ),
            Center(
              child: Text(
                "Diana adalah bunga bernuansa kuning dan putih seperti melati, memiliki keindahan tersendiri jika terpancar cahaya matahari. Bunga ini sangat cantik untuk dilihat maupun dimiliki dan merawat bunga ini pun sangat mudah.",
                style: TextStyle(
                  wordSpacing: 1,
                  height: 3,
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
                child: Text(
              "Rp 1.100.000",
              style: TextStyle(
                wordSpacing: 1,
                height: 3,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 252, 175, 201)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return pagePelanggan();
                      }),
                    );
                  },
                  child: Text(
                    "BELI",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
