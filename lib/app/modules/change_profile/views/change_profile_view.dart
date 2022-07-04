import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_profile_controller.dart';

class ChangeProfileView extends GetView<ChangeProfileController> {
  const ChangeProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
        title: const Text('Change Profile'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Container(
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(15),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage("assets/logo/noimage.png"),
                        fit: BoxFit.cover)),
              ),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: controller.emailController,
            cursorColor: Colors.red[900],
            decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.red[900]),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.red.shade900)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: controller.nameController,
            cursorColor: Colors.red[900],
            decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.red[900]),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.red.shade900)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: controller.statusController,
            cursorColor: Colors.red[900],
            decoration: InputDecoration(
                labelText: "Status",
                labelStyle: TextStyle(color: Colors.red[900]),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.red.shade900)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("No image"),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Chosen...",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: Get.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
              onPressed: () {},
              child: Text(
                'Update'.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
