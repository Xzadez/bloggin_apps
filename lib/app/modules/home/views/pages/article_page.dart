import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../detail_blog_view/views/detail_blog_view.dart';
import '../widgets/customCard.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    final sizeDevice = MediaQuery.of(context).size;
    final sizeHeight = sizeDevice.height;
    final sizeWidht = sizeDevice.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          "My Articles",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xFFFFFFFF),
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidht / 20,
        ),
        child: ListView(
          children: <Widget>[
            CustomCard(
              onPress: () {
                Get.to(const DetailBlogView());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomCard(
              onPress: () {
                Get.to(const DetailBlogView());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomCard(
              onPress: () {
                Get.to(const DetailBlogView());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomCard(
              onPress: () {
                Get.to(const DetailBlogView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
