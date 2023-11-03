import 'package:get/get.dart';
import 'package:house_rent/Models/services_model.dart';
import 'package:house_rent/Resources/Assets/image_assets.dart';

class HomeController extends GetxController {
  final List<Service> servicesList = [
    Service(name: 'Cook', image: ImageAssets.cookImage),
    Service(name: 'Driver', image: ImageAssets.driverImage),
    Service(name: 'Maid', image: ImageAssets.maidImage),
    Service(name: 'Baby Sitter', image: ImageAssets.babySitterImage),
    Service(name: 'Security Guard', image: ImageAssets.securityGuard),
    Service(name: 'Trimmer', image: ImageAssets.trimmer)
  ];
}
