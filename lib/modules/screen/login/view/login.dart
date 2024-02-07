import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/globals/global.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? pass;
  TextEditingController email_c = TextEditingController();
  TextEditingController pass_c = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset("assets/Checkmark.png"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome Back to DO IT ",
                    style: Global.poppins25,
                  ),
                  Text(
                    "Have an other productive day !",
                    style: Global.poppins18,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Valid Password";
                      } else {
                        return null;
                      }
                    },
                    controller: email_c,
                    onSaved: (val) {
                      email = val!;
                    },
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.email,
                          size: 30,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "E-mail",
                      hintStyle: Global.poppins18black,
                      border: outlineInputBorder(),
                      enabledBorder: outlineInputBorder(),
                      focusedBorder: outlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Valid Password";
                      } else {
                        return null;
                      }
                    },
                    controller: pass_c,
                    onSaved: (val) {
                      pass = val!;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.lock,
                          size: 30,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password",
                      hintStyle: Global.poppins18black,
                      border: outlineInputBorder(),
                      enabledBorder: outlineInputBorder(),
                      focusedBorder: outlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(""),
                      Spacer(),
                      Text(
                        "forget password?",
                        style: Global.poppins14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offNamedUntil('/home', (routes) => false);
                    },
                    child: Container(
                      height: Get.height * .07,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Color(0xff0EA5E9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "sign in",
                        style: Global.poppins18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: Global.poppins14,
                      ),
                      Text(
                        "sign up",
                        style: Global.poppins14blue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Sign In with : ",
                        style: Global.poppins14,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        child: Container(
                          height: 45,
                          width: 45,
                          child: Image.asset("assets/Apple Logo.png"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        child: Container(
                          height: 45,
                          width: 45,
                          child: Image.asset("assets/Google.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Color(0xff999999),
        ),
      );
}
