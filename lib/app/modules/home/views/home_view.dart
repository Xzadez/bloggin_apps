import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFFFFFF),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFFFEFEFE),
        padding: const EdgeInsets.all(5),
        height: 70,
        child: const Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home_outlined,
                    color: Color(0x30000000),
                    size: 22,
                  ),
                  Text(
                    'Iopsim',
                    style: TextStyle(
                        fontFamily: 'SFPRODISPLAY',
                        color: Color(0x30000000),
                        fontSize: 10),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Color(0x30000000),
                    size: 22,
                  ),
                  Text(
                    'Iopsim',
                    style: TextStyle(
                        fontFamily: 'SFPRODISPLAY',
                        color: Color(0x30000000),
                        fontSize: 10),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.list_alt_outlined,
                    color: Color(0x30000000),
                    size: 22,
                  ),
                  Text(
                    'Iopsim',
                    style: TextStyle(
                        fontFamily: 'SFPRODISPLAY',
                        color: Color(0x30000000),
                        fontSize: 10),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.person_2_outlined,
                    color: Color(0x30000000),
                    size: 22,
                  ),
                  Text(
                    'Iopsim',
                    style: TextStyle(
                        fontFamily: 'SFPRODISPLAY',
                        color: Color(0x30000000),
                        fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFFFEFEFE),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 44,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blogs',
                      style: TextStyle(
                        fontFamily: 'LibreBaskerville',
                        fontWeight: FontWeight.w700,
                        color: Color(0xff6E53F1),
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Today, September 30rd',
                      style: TextStyle(
                        fontFamily: 'SFPRODISPLAY',
                        color: Color(0x50000000),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  padding: const EdgeInsets.all(12),
                  style: IconButton.styleFrom(
                    iconSize: 24,
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Color(0x80000000),
                        width: 0.01,
                      ),
                    ),
                  ),
                  icon: Obx(
                    () => Icon(
                      Icons.notifications_none,
                      color: homeController.iconColor.value,
                    ),
                  ),
                  onPressed: () {
                    homeController.changeColor();
                  },
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search articles',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.tune),
                        color: Colors.grey,
                        onPressed: () {
                          // Add functionality for filter action here
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
