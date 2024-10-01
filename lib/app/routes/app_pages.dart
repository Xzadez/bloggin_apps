import 'package:get/get.dart';

import '../modules/detail_blog_view/bindings/detail_blog_view_binding.dart';
import '../modules/detail_blog_view/views/detail_blog_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/view_more/bindings/view_more_binding.dart';
import '../modules/view_more/views/view_more_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: Routes.SEARCH,
    //   page: () => SearchPage(),
    // ),
    // GetPage(
    //   name: Routes.ARTICLES,
    //   page: () => ArticlePage(),
    // ),
    // GetPage(
    //   name: Routes.PROFILE,
    //   page: () => ProfilePage(),
    // ),
    GetPage(
      name: _Paths.DETAIL_BLOG_VIEW,
      page: () => const DetailBlogView(),
      binding: DetailBlogViewBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_MORE,
      page: () => const ViewMoreView(),
      binding: ViewMoreBinding(),
    ),
  ];
}
