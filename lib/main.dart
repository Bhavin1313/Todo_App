import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/modules/screen/login/view/login.dart';
import 'package:todo/modules/screen/signup/view/signup.dart';

import 'modules/screen/home/view/home.dart';
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
        GetPage(name: '/signup', page: () => Signup()),
        GetPage(name: '/home', page: () => Home()),
      ],
    ),
  );
}
