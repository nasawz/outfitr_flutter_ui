import 'package:get/get.dart';

import 'package:outfitr/app/modules/Shopping_Cart/bindings/shopping_cart_binding.dart';
import 'package:outfitr/app/modules/Shopping_Cart/views/shopping_cart_view.dart';
import 'package:outfitr/app/modules/configuration/bindings/configuration_binding.dart';
import 'package:outfitr/app/modules/configuration/views/configuration_view.dart';
import 'package:outfitr/app/modules/home/bindings/home_binding.dart';
import 'package:outfitr/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CONFIGURATION,
      page: () => ConfigurationView(),
      binding: ConfigurationBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING_CART,
      page: () => ShoppingCartView(),
      binding: ShoppingCartBinding(),
    ),
  ];
}
