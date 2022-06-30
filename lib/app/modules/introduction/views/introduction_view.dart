import 'package:chat_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to my app",
          body:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias aut, repellat ipsum facere voluptate dicta obcaecati deserunt nobis suscipit eaque?",
          image: Container(
            width: Get.width * 0.6,
            height: Get.width * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/main-laptop-duduk.json"),
            ),
          ),
        ),
        PageViewModel(
          title: "Welcome to my app",
          body:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias aut, repellat ipsum facere voluptate dicta obcaecati deserunt nobis suscipit eaque?",
          image: Container(
            width: Get.width * 0.6,
            height: Get.width * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/ojek.json"),
            ),
          ),
        ),
        PageViewModel(
          title: "Welcome to my app",
          body:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias aut, repellat ipsum facere voluptate dicta obcaecati deserunt nobis suscipit eaque?",
          image: Container(
            width: Get.width * 0.6,
            height: Get.width * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/payment.json"),
            ),
          ),
        ),
        PageViewModel(
          title: "Welcome to my app",
          body:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias aut, repellat ipsum facere voluptate dicta obcaecati deserunt nobis suscipit eaque?",
          image: Container(
            width: Get.width * 0.6,
            height: Get.width * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/register.json"),
            ),
          ),
        ),
      ],
      onDone: () => Get.offAllNamed(Routes.LOGIN),
      showBackButton: false,
      showSkipButton: true,
      skip: Text("Skip"),
      next: Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
    ));
  }
}
