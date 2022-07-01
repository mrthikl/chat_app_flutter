import 'package:chat_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.all(15),
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/logo/noimage.png"),
                          fit: BoxFit.cover)),
                ),
                Text("Update Status", style: TextStyle(fontSize: 20)),
                Text("lorem.nisum@gmail.com",
                    style: TextStyle(color: Colors.black54, fontSize: 16)),
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () => Get.toNamed(Routes.UPDATE_STATUS),
                      leading: Icon(Icons.note_add_outlined),
                      title:
                          Text("Update Status", style: TextStyle(fontSize: 22)),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.person),
                      title: Text("Change Profile",
                          style: TextStyle(fontSize: 22)),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.change_circle_rounded),
                      title:
                          Text("Change Theme", style: TextStyle(fontSize: 22)),
                      trailing: Text("Light"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    bottom: context.mediaQueryPadding.bottom + 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Chat App",
                        style: TextStyle(color: Colors.black54, fontSize: 18))
                  ],
                )),
          ],
        ));
  }
}
