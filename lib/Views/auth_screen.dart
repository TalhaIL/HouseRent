import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rent/Controllers/auth_controller.dart';
import 'package:house_rent/Resources/Assets/image_assets.dart';
import 'package:house_rent/Resources/Widgets/custom_button.dart';
import 'package:house_rent/Resources/Widgets/custom_textfield.dart';
import 'package:house_rent/Utils/app_layout.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      CustomTextField(
        text: 'Confirm Password',
        controller: controller.confirmPassword,
      ),
      SizedBox(
        height: Applayout.getHeight(30),
      )
    ];
    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            controller.isLoginPage.value
                ? const Image(
                    image: AssetImage(ImageAssets.loginImage),
                  )
                : const Image(
                    image: AssetImage(ImageAssets.signupImage),
                  ),
            SizedBox(
              height: Applayout.getHeight(10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              customTextButton(
                                onPress: () {
                                  controller.isLoginPage.value = true;
                                },
                                text: 'Sign in',
                                color: controller.isLoginPage.value
                                    ? Colors.black
                                    : Colors.black54,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: controller.isLoginPage.value
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: Applayout.getWidth(5),
                          ),
                          Column(
                            children: [
                              customTextButton(
                                onPress: () {
                                  controller.isLoginPage.value = false;
                                },
                                text: 'Sign up',
                                color: !controller.isLoginPage.value
                                    ? Colors.black
                                    : Colors.black54,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: !controller.isLoginPage.value
                                        ? Colors.blue
                                        : Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      customTextButton(
                        onPress: () {
                          controller.email.text = '';
                          controller.password.text = '';
                          controller.confirmPassword.text = '';
                        },
                        text: 'Reset',
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Applayout.getHeight(10),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          text: 'Email',
                          controller: controller.email,
                        ),
                        SizedBox(
                          height: Applayout.getHeight(30),
                        ),
                        CustomTextField(
                          text: 'Password',
                          controller: controller.password,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        if (!controller.isLoginPage.value) ...list,
                        CustomButton(
                            onPress: controller.isLoginPage.value
                                ? controller.login
                                : controller.signedUp,
                            text: controller.isLoginPage.value
                                ? 'Login'
                                : 'Register'),
                        if (!controller.isLoginPage.value)
                          TextButton(
                            onPressed: () {
                              controller.isLoginPage.value = true;
                            },
                            child: const Text('Already have an account?'),
                          ),
                        if (controller.isLoginPage.value)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: controller.isChecked.value,
                                    onChanged: (v) {
                                      controller.isChecked.value = v as bool;
                                    },
                                  ),
                                  const Text('Stay Connected'),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed('/forgotPasswordScreen');
                                },
                                child: const Text('Forgot Password'),
                              )
                            ],
                          ),
                        if (controller.isLoginPage.value)
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Divider(
                                thickness: 5,
                              ),
                              Text('OR'),
                              Divider()
                            ],
                          )
                      ],
                    ),
                  ),
                  if (controller.isLoginPage.value)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        signInWithSocials(
                            color: Colors.redAccent, text: 'Google'),
                        signInWithSocials(color: Colors.blue, text: 'Facebook')
                      ],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton customTextButton(
      {required Function() onPress, required text, Color? color}) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: color),
      ),
    );
  }

  MaterialButton signInWithSocials(
      {required Color color, required String text}) {
    return MaterialButton(
      minWidth: Applayout.getWidth(150),
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
