import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rent/Utils/app_layout.dart';
import 'package:house_rent/Views/auth_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Applayout.getHeight(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Password Requirements\n',
                  style: TextStyle(
                    color: Colors.black,
                    height: 1.5,
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '1.Password should be atleast 8 characters.\n',
                    ),
                    TextSpan(
                      text:
                          '2.Your password should contain a special character.\n',
                    ),
                    TextSpan(
                        text:
                            '3.Your password should not be any of your last 4 passwords.'),
                  ],
                ),
              ),
              getHeight(),
              const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'We\'ll send you an email for resetting password',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              getHeight(),
              const CustomTextField(text: 'Enter Email'),
              getHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Send an email',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      'Back to login',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox getHeight() => Applayout.sizedBoxheight(20);
}
