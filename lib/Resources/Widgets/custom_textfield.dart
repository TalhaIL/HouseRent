import 'package:flutter/material.dart';
import 'package:house_rent/Utils/app_layout.dart';

class CustomTextField extends StatelessWidget {
  final double? height;
  final int? maxLines;
  final TextEditingController? controller;
  final String text;
  const CustomTextField(
      {super.key,
      required this.text,
      this.controller,
      this.height,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Applayout.getHeight(height ?? 50.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        maxLines: maxLines ?? 1,
      ),
    );
  }
}
