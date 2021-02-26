import 'package:get/get.dart';

import '../controllers/configuration_controller.dart';

class ConfigurationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfigurationController>(
      () => ConfigurationController(),
    );
  }
}
