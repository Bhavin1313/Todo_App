import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      ],
    ),
  );
}
