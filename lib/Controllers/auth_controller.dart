import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  RxBool isChecked = false.obs;
  RxBool isLoginPage = true.obs;

  login() {
    Get.toNamed('/homeScreen');
    log('LoggedIN');
  }

  signedUp() {
    log('SignedUp');
  }
}
