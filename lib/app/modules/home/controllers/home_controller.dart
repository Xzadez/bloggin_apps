import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var iconColor = Colors.black.obs;

  void changeColor() {
    if (iconColor.value == Colors.black) {
      iconColor.value = Colors.red;
    } else {
      iconColor.value = Colors.black;
    }
  }
}
