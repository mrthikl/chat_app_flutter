import 'package:chat_app/app/utils/error.screen.dart';
import 'package:chat_app/app/utils/loading.screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/controllers/auth_controller.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/splash.screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final authController = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Chat App",
            initialRoute: Routes.SEARCH,
            getPages: AppPages.routes,
          );
          // return FutureBuilder(
          //     future: Future.delayed(Duration(seconds: 3)),
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.done) {
          //         return Obx(() => GetMaterialApp(
          //               debugShowCheckedModeBanner: false,
          //               title: "Chat App",
          //               initialRoute: authController.isSkipIntro.isTrue
          //                   ? authController.isAuth.isTrue
          //                       ? Routes.HOME
          //                       : Routes.LOGIN
          //                   : Routes.INTRODUCTION,
          //               getPages: AppPages.routes,
          //             ));
          //       }
          //       return SplashScreen();
          //     });
        }
        return LoadingScreen();
      },
    );
  }
}
