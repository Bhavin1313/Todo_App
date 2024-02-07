import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Get.offNamedUntil('/intro', (routes) => false);
      },
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff1253AA),
                Color(0xff05243E),
              ],
              stops: [
                0.0,
                1.0
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Checkmark.png"),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/DO IT.png"),
              SizedBox(
                height: Get.height * .4,
              ),
              const Text(
                "v 1.0.0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
