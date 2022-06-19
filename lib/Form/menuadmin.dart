import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:pa_kelompok4/Form/form_pelanggan.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pa_kelompok4/home_controller.dart';
import 'package:pa_kelompok4/item_card.dart';

class MenuAdmin extends StatefulWidget {
  final String username;
  final databaseReference = FirebaseFirestore.instance;
  MenuAdmin(this.username);

  @override
  State<MenuAdmin> createState() => _MenuAdminState();
}

class _MenuAdminState extends State<MenuAdmin> {
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
        title: Text("Data Pelanggan"),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: dataPelanggan.snapshots(),
                builder: (_, snapshot) {
                  return (snapshot.hasData)
                      ? Column(
                          children: snapshot.data!.docs.map((e) {
                            print(e.id);
                            return ItemCard(
                              e.get('namaPelanggan'),
                              e.get('alamat'),
                              e.get('noHandphone'),
                              e.get('bungaPesanan'),
                              e.get('jumlah'),
                              e.get('tanggalAmbil'),
                              onUpdate: () {
                                dataPelanggan.doc(e.id).update({
                                  'namaPelanggan':
                                      _namaPelangganController.text,
                                  'alamat': _alamatController.text,
                                  'noHandphone': _noController.text,
                                  'bungaPesanan': _bungaPesananController.text,
                                  'jumlah': _jumlahController.text,
                                  'tanggalAmbil': _tanggalController.text,
                                });
                                _namaPelangganController.text = '';
                                _alamatController.text = '';
                                _noController.text = '';
                                _bungaPesananController.text = '';
                                _jumlahController.text = '';
                                _tanggalController.text = '';
                              },
                              onDelete: () {
                                dataPelanggan.doc(e.id).delete();
                              },
                            );
                          }).toList(),
                        )
                      : Text('Loading............');
                },
              ),
              SizedBox(height: 150)
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(-5, 0),
                      blurRadius: 15,
                      spreadRadius: 3)
                ]),
                width: double.infinity,
                height: 130,
                child: ListView(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: _namaPelangganController,
                            decoration:
                                InputDecoration(hintText: "Nama Pelanggan "),
                          ),
                          TextField(
                            controller: _alamatController,
                            decoration: InputDecoration(hintText: "Alamat"),
                          ),
                          TextField(
                            controller: _noController,
                            decoration:
                                InputDecoration(hintText: "No Handphone"),
                          ),
                          TextField(
                            controller: _bungaPesananController,
                            decoration:
                                InputDecoration(hintText: "Bunga Pesanan"),
                          ),
                          TextField(
                            controller: _jumlahController,
                            decoration: InputDecoration(hintText: "Jumlah"),
                          ),
                          TextField(
                            controller: _tanggalController,
                            decoration:
                                InputDecoration(hintText: "TanggalPesanan"),
                          ),
                        ],
                      ),
                      /*SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                      ),*/
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Update Data',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            //// ADD DATA HERE
                            dataPelanggan.add({
                              'namaPelanggan': _namaPelangganController.text,
                              'alamat': _alamatController.text,
                              'noHandphone': _noController.text,
                              'bungaPesanan': _bungaPesananController.text,
                              'jumlah': _jumlahController.text,
                              'tanggalAmbil': _tanggalController.text,
                            });

                            _namaPelangganController.text = '';
                            _alamatController.text = '';
                            _noController.text = '';
                            _bungaPesananController.text = '';
                            _jumlahController.text = '';
                            _tanggalController.text = '';
                          }),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
