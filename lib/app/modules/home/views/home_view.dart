import 'dart:ui';

import 'package:chat_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<Widget> myChats = List.generate(
      20,
      (index) => ListTile(
            onTap: () => Get.toNamed(Routes.CHAT_ROOM),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black26,
              child: Image.asset(
                "assets/logo/noimage.png",
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              "Name ${index + 1}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "Status ${index + 1}",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            trailing: Chip(label: Text("3")),
          )).reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Material(
            elevation: 6,
            child: Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.black.withOpacity(0.02)))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chats",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red[900],
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () => Get.toNamed(Routes.PROFILE),
                          child: Icon(
                            Icons.person,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: myChats.length,
                  itemBuilder: (context, index) => myChats[index]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[900],
        onPressed: () => Get.toNamed(Routes.SEARCH),
        child: Icon(Icons.search),
      ),
    );
  }
}
