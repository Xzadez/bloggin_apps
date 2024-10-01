import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  AddView({super.key});
  final AddController addController = Get.put(AddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text("Create Post", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, size: 50, color: Colors.grey),
                      Text("Add Post Images",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Add Heading Field
              TextField(
                decoration: InputDecoration(
                  labelText: "Add Heading",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Add Tag Field
              TextField(
                decoration: InputDecoration(
                  labelText: "Add Tag",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Category Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Category",
                  border: OutlineInputBorder(),
                ),
                items: <String>['Category 1', 'Category 2', 'Category 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  // Handle category selection
                },
              ),
              SizedBox(height: 16),

              // Add Video Link Field
              TextField(
                decoration: InputDecoration(
                  labelText: "Add Video Link",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Write Articles Rich Text Field
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: "Write Articles",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),

              // Post Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle post action
                  },
                  child: Text(
                    "POST",
                    style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
