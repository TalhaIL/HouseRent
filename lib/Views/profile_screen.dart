import 'dart:typed_data';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rent/Controllers/profile_controller.dart';
import 'package:house_rent/Resources/Widgets/custom_button.dart';
import 'package:house_rent/Resources/Widgets/custom_textfield.dart';
import 'package:house_rent/Utils/app_layout.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final controller = Get.put(ProfileController());

  Future<void> _openGallery() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final file = img.decodeImage(await pickedFile.readAsBytes())!;
      final adjustedImage = img.copyResize(file, width: 300, height: 300);

      controller.setImage(adjustedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your details here'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: _openGallery,
              child: Obx(
                () {
                  final selectedImage = controller.selectedImage.value;
                  return selectedImage == null
                      ? const CircleAvatar(
                          radius: 80.0, // Adjust the size as needed
                          backgroundColor: Colors
                              .black12, // Background color of the circle avatar
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                size:
                                    40.0, // Adjust the camera icon size as needed
                                color:
                                    Colors.black38, // Color of the camera icon
                              ),
                            ],
                          ),
                        )
                      : CircleAvatar(
                          radius: 80.0,
                          backgroundImage: MemoryImage(
                            Uint8List.fromList(
                              img.encodePng(selectedImage),
                            ),
                          ),
                        );
                },
              ),
            ),
            Applayout.sizedBoxheight(25),
            CustomTextField(
              text: 'Enter your name',
              controller: controller.nameController,
            ),
            Applayout.sizedBoxheight(20),
            CustomTextField(
              text: 'Enter your email',
              controller: controller.emailController,
            ),
            Applayout.sizedBoxheight(20),
            CustomTextField(
              text: 'Enter your number',
              controller: controller.numberController,
            ),
            Applayout.sizedBoxheight(20),
            CustomTextField(
              text: 'Enter your location',
              controller: controller.locationController,
              maxLines: 3,
              height: 150,
            ),
            // Applayout.sizedBoxheight(20),
            CustomButton(
              text: 'Submit',
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
