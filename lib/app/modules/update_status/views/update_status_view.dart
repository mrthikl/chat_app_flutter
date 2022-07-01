import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_status_controller.dart';

class UpdateStatusView extends GetView<UpdateStatusController> {
  const UpdateStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.red[900],
        title: const Text('Update Status'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextField(
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
