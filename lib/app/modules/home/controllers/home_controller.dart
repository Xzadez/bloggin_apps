import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  var iconColor = Colors.grey.obs;

  void changeColor() {
    iconColor.value =
        iconColor.value == Colors.grey ? Colors.purple : Colors.grey;
  }

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
