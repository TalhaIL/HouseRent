import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rent/Controllers/home_controller.dart';
import 'package:house_rent/Utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/profileScreen');
            },
            icon: const Icon(Icons.account_circle),
          )
        ],
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Profile'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Inbox'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Start your journey with us',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Applayout.sizedBoxheight(20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10),
                itemCount: controller.servicesList.length,
                itemBuilder: ((BuildContext context, int index) => Card(
                      borderOnForeground: true,
                      elevation: 0.7,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black38),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  controller.servicesList[index].name,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            Applayout.sizedBoxheight(10),
                            Expanded(
                              child: Image(
                                image: AssetImage(
                                  controller.servicesList[index].image,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
