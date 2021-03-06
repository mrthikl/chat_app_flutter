import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeProfileController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController statusController;

  @override
  void onInit() {
    emailController = TextEditingController(text: "lorem.ipsum@gmail.com");
    nameController = TextEditingController(text: "lorem ipsum");
    statusController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    nameController.dispose();
    statusController.dispose();
    super.onClose();
  }
}
