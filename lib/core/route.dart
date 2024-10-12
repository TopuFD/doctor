import 'package:doctor/view/splash_screen/choose_screen.dart';
import 'package:doctor/view/splash_screen/onbording_screen.dart';
import 'package:doctor/view/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoute{
  static const splashScreen = "/splashScreen";
  static const onbordingScreen = "/onbordingScreen";
  static const chooseRole = "/chooseRole";
  static List<GetPage> pages = [
    GetPage(name: splashScreen, page: (()=> const SplashScreen())),
    GetPage(name: onbordingScreen, page: (()=>  OnbordingScreen())),
    GetPage(name: chooseRole, page: (()=>  ChooseScreen())),
  ];
}