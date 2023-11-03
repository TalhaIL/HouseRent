import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image/image.dart' as img;

class ProfileController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final locationController = TextEditingController();
  Rx<img.Image?> selectedImage = Rx<img.Image?>(null);

  void setImage(img.Image? image) {
    selectedImage.value = image;
  }
}
