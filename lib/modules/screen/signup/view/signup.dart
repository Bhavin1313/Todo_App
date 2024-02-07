import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/globals/global.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? s_email;
  String? s_pass;
  String? name;
  TextEditingController s_email_c = TextEditingController();
  TextEditingController s_pass_c = TextEditingController();
  TextEditingController s_name_c = TextEditingController();
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
                0.3,
                0.9
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Image.asset("assets/Checkmark.png"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome to DO IT",
                      style: Global.poppins25,
                    ),
                    Text(
                      "create an account and Join us now!",
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
                      controller: s_email_c,
                      onSaved: (val) {
                        s_email = val!;
                      },
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
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
                          return "Enter Valid name";
                        } else {
                          return null;
                        }
                      },
                      controller: s_name_c,
                      onSaved: (val) {
                        name = val!;
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
                        hintText: "Full Name",
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
                      controller: s_pass_c,
                      onSaved: (val) {
                        s_pass = val!;
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
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offNamedUntil('/login', (routes) => false);
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
                          "sign up",
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
                          "Already have an account? ",
                          style: Global.poppins14,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/login');
                          },
                          child: Text(
                            "sign in",
                            style: Global.poppins14blue,
                          ),
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
                          "Sign Up with : ",
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
