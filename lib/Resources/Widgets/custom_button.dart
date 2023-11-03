import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rent/Resources/Colors/app_colors.dart';
import 'package:house_rent/Utils/app_layout.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustomButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: Applayout.getHeight(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: AppColor.appColor,
      minWidth: Get.width,
      onPressed: onPress,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
