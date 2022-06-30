import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Widget> friends = List.generate(
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
              trailing: GestureDetector(
                  onTap: () => Get.toNamed(Routes.CHAT_ROOM),
                  child: Chip(label: Text("Message"))),
            )).reversed.toList();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: AppBar(
            backgroundColor: Colors.red[900],
            title: const Text('Search'),
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back),
            ),
            flexibleSpace: Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextField(
                  cursorColor: Colors.red[900],
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      hintText: "Search...",
                      suffixIcon: InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {},
                          child: Icon(
                            Icons.search,
                            color: Colors.red[900],
                          ))),
                ),
              ),
            ),
          ),
        ),
        body: friends.length == 0
            ? Center(
                child: Container(
                  width: Get.width * 0.7,
                  height: Get.width * 0.7,
                  child: Lottie.asset("assets/lottie/empty.json"),
                ),
              )
            : ListView.builder(
                itemCount: friends.length,
                itemBuilder: (context, index) => friends[index]));
  }
}
