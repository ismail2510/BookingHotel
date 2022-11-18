
import 'package:booking_hotels/controller/book_getX.dart';
import 'package:booking_hotels/login.dart';
import 'package:booking_hotels/open.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/auth_controller/authentication.dart';
import 'controller/database_local/cacheHelper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));

  await CacheHelper.init();
  Get.put(BookGetX());

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Booking Hotels',
      debugShowCheckedModeBanner: false,

      //Here The Theme.
      home: Firstpage(),
    );
  }
}