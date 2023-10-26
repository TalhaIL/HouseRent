import 'package:flutter/material.dart';
import 'package:house_rent/Resources/Assets/icon_assets.dart';
import 'package:house_rent/Resources/Colors/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.appColor,
      body: Center(
        child: Image(
          height: 160,
          width: 250,
          fit: BoxFit.cover,
          image: AssetImage(IconAssets.logo),
        ),
      ),
    );
  }
}
