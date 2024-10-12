import 'package:doctor/view/splash_screen/controller/onbording_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBodyButton extends StatelessWidget {
  final VoidCallback ontap;
  final String? btnTitle;
  bool isOnbording = false;
  CustomBodyButton(
      {super.key,
      this.btnTitle,
      required this.ontap,
      required this.isOnbording});
  OnbordingController onbordingController = Get.put(OnbordingController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.h,
      height: 48.w,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
            backgroundColor: const WidgetStatePropertyAll(AppColor.black),
            overlayColor: const WidgetStatePropertyAll(AppColor.black50),
          ),
          onPressed: ontap,
          child: isOnbording
              ? Text(
                  onbordingController.currentIndex.value == 3
                      ? "Get Started"
                      : "Next",
                  style: const TextStyle(
                    color: AppColor.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )
              : Text(
                  btnTitle!,
                  style: const TextStyle(
                    color: AppColor.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )),
    );
  }
}
