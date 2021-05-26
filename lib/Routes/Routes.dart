import 'package:get/get.dart';
import 'package:weatherflutter/Screen/AboutScreen/AboutScreen.dart';
import 'package:weatherflutter/Screen/CategoryScreen/CategoryScreen.dart';

List<GetPage> Routes = [
  GetPage(
      name: "/about",
      page: () => AboutScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 450)),
  GetPage(
      name: "/category",
      page: () => CategoryScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 450)),
];
