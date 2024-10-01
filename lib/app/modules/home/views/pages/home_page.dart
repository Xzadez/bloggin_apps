import 'package:bloggin_apps/app/modules/detail_blog_view/views/detail_blog_view.dart';
import 'package:bloggin_apps/app/modules/home/views/widgets/customCard.dart';
import 'package:bloggin_apps/app/modules/home/views/widgets/customSearchBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeDevice = MediaQuery.of(context).size;
    final sizeHeight = sizeDevice.height;
    final sizeWidht = sizeDevice.width;
    return ListView(children: <Widget>[
      Container(
        color: const Color(0xFFFFFFFF),
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidht / 20,
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
                  icon: const Icon(
                    Icons.notifications_none,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchBar(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Trending',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(DetailBlogView());
                      },
                      child: const Text(
                        'View more',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFF6E53F1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomCard(
                  onPress: () {
                    Get.to(DetailBlogView());
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View more',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF6E53F1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomCard(
                  onPress: () {
                    Get.to(DetailBlogView());
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Following',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View more',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF6E53F1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomCard(
                  onPress: () {
                    Get.to(DetailBlogView());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
