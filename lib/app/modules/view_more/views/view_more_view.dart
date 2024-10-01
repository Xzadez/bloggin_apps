import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_more_controller.dart';

class ViewMoreView extends GetView<ViewMoreController> {
  const ViewMoreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewMoreView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ViewMoreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
