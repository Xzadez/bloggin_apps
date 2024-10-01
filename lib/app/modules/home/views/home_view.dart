import 'package:bloggin_apps/app/modules/add_blog/views/add_view.dart';
import 'package:bloggin_apps/app/modules/home/views/widgets/customBottomNavbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../detail_blog_view/views/detail_blog_view.dart';
import '../controllers/home_controller.dart';
import 'pages/article_page.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/search_page.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  final HomeController homeController = Get.put(HomeController());

  final List<Widget> pages = [
    HomePage(),
    SearchPage(
      onTap: () {
        Get.to(DetailBlogView());
      },
    ),
    ArticlePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.only(right: 10),
        child: FloatingActionButton(
          onPressed: () {
            Get.to(AddView());
          },
          backgroundColor: Color(0xFFFFFFFF),
          child: const Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(controller: homeController),
      body: Obx(() {
        return pages[homeController.selectedIndex.value];
      }),
    );
  }
}
