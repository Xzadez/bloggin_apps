import 'package:get/get.dart';

import '../controllers/detail_blog_view_controller.dart';

class DetailBlogViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBlogViewController>(
      () => DetailBlogViewController(),
    );
  }
}
