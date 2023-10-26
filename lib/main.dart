import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rent/Resources/Routes/routes.dart';
import 'package:house_rent/Views/auth_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
      ),
      home: AuthScreen(),
      getPages: AppRoute.appRoutes(),
    );
  }
}
