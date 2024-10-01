import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_blog_view_controller.dart';

class DetailBlogView extends GetView<DetailBlogViewController> {
  const DetailBlogView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_outline, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/400'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Monarch population soars 4,900 percent since last year in thrilling 2021 western migration",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),

                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage:
                            NetworkImage('https://via.placeholder.com/50'),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("By Andy Corbley",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1hr ago", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.comment_outlined, color: Colors.grey),
                          SizedBox(width: 4),
                          Text("8 comments"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Colors.grey),
                          SizedBox(width: 4),
                          Text("34 likes"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.share_outlined, color: Colors.grey),
                          SizedBox(width: 4),
                          Text("Share"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Article Body
                  Text(
                    "When just 200 Western monarch butterflies arrived in the Pismo Beach Butterfly Grove from their northerly migration last year, park rangers feared the treasured insect would soon be gone forever.\n\n"
                    "This year, however, volunteers tallied their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far north as Canada to spend the winter on the California coast.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Scroll to top functionality
        },
        child: const Icon(Icons.arrow_upward),
        backgroundColor: Colors.black,
      ),
    );
  }
}
