import 'package:get/get.dart';

import '../controllers/view_more_controller.dart';

class ViewMoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewMoreController>(
      () => ViewMoreController(),
    );
  }
}
