import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/modules/screen/login/view/login.dart';

import 'modules/screen/intro/view/intro.dart';
import 'modules/screen/splash/view/splash.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/', page: () => Splash()),
        GetPage(name: '/intro', page: () => Intro()),
        GetPage(name: '/login', page: () => Login()),
      ],
    ),
  );
}
