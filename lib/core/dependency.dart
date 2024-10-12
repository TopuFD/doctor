import 'package:doctor/view/splash_screen/controller/onbording_controller.dart';
import 'package:get/get.dart';

class DependencyInjection extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>OnbordingController());
  }

}