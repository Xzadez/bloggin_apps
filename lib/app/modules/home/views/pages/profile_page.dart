import 'package:bloggin_apps/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  // final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          "My profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 50,
            ),
            const SizedBox(height: 10),

            const Text(
              "Kelompok 10",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "@Kelompok_10",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Edit Profile"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: const Color.fromARGB(255, 245, 245, 245),
              ),
            ),
            const SizedBox(height: 20),

            // Posts, Followers, Following Stats with GetX reactive bindings
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("12",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Posts", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: [
                    Text("12",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Followers", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: [
                    Text("12",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Following", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Posts",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {
                          // Handle liked tab
                        },
                        child: const Text("Liked"),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text("Saved"),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(bottom: 16),
                        child: ListTile(
                          title: const Text(
                              'What It\'s Like To Stop Using Google Search'),
                          subtitle: const Row(
                            children: [
                              Icon(Icons.timer, size: 14, color: Colors.grey),
                              SizedBox(width: 5),
                              Text('Feb 21',
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
