import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var pelanggan = "".obs;

  final pelangganCtrl = TextEditingController();

  onPressed() {
    pelanggan = pelangganCtrl.text.obs;
  }

  // Mirip dispose() di Stateful
  @override
  void onClose() {
    pelangganCtrl.dispose();
    super.onClose();
  }
}
