
import 'package:doctor/utils/color.dart';
import 'package:doctor/utils/image.dart';
import 'package:doctor/widgets/onbording_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController{
    var currentIndex = 0.obs;
  List itemList = [
    const CustomCarouselItem(
      image: AppImage.onbordingOne,
      heading: "Welcome to ilera",
      desce:
          "Simplify your healthcare experience. Manage appointments, access records, and more.",
    ),
    CustomCarouselItem(
      image: AppImage.onbordTwo,
      heading: "Book Appointments Effortlessly",
      desce: "Find and book available slots with your preferred doctors in just a few taps.",
    ),
     CustomCarouselItem(
      image: AppImage.onbordThree,
      heading: "Your Health Records, Always Accessible",
      desce: "Securely access your medical history and health records anytime, anywhere.",
    ),
  ];

    carouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < itemList.length; i++)
          Padding(
              padding: EdgeInsets.only(left: Get.width * .02),
              child: Obx(() {
                return Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: i == currentIndex.value
                          ? AppColor.black
                          : AppColor.black50,
                      shape: BoxShape.circle),
                );
              }))
      ],
    );
  }
}