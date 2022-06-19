//import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class pagePelanggan extends StatefulWidget {
  const pagePelanggan({Key? key}) : super(key: key);

  @override
  State<pagePelanggan> createState() => _pagePelangganState();
}

class _pagePelangganState extends State<pagePelanggan> {
  List<String> items = ['Elizabeth', 'Anne', 'Scarllet', 'Regina', 'Diana'];
  String? SelectedItem = 'Elizabeth';
  final TextEditingController _namaPelangganController =
      TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _noController = TextEditingController();
  final TextEditingController _bungaPesananController = TextEditingController();
  final TextEditingController _jumlahController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference dataPelanggan = firestore.collection("dataPelanggan");
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Data Pelanggan"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _namaPelangganController,
                decoration: InputDecoration(
                  labelText: " Nama Pelanggan",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _alamatController,
                decoration: InputDecoration(
                  labelText: " Alamat ",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _noController,
                decoration: InputDecoration(
                  labelText: " No Handphone ",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _bungaPesananController,
                decoration: InputDecoration(
                  labelText: " Bunga Pesanan ",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _jumlahController,
                decoration: InputDecoration(
                  labelText: " Jumlah ",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _tanggalController,
                decoration: InputDecoration(
                  labelText: " Tanggal di ambil  ",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text('Pesan Sekarang'),
                onPressed: () {
                  dataPelanggan.add({
                    'namaPelanggan': _namaPelangganController.text,
                    "alamat": _alamatController.text,
                    "noHandphone": _noController.text,
                    "bungaPesanan": _bungaPesananController.text,
                    "jumlah": _jumlahController.text,
                    "tanggalAmbil": _tanggalController.text,
                  });
                  _namaPelangganController.text = '';
                  _alamatController.text = '';
                  _noController.text = '';
                  _bungaPesananController.text = '';
                  _jumlahController.text = '';
                  _tanggalController.text = ' ';
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
