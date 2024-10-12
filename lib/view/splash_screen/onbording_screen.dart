import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor/core/route.dart';
import 'package:doctor/view/splash_screen/controller/onbording_controller.dart';
import 'package:doctor/widgets/custom_body_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});

  OnbordingController onbordingController = Get.find<OnbordingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(child: Obx(() {
          return CarouselSlider(
              items: onbordingController.itemList
                  .map((item) => SizedBox(
                        child: item,
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 650,
                aspectRatio: 1,
                viewportFraction: 1,
                initialPage: onbordingController.currentIndex.value,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, context) {
                  onbordingController.currentIndex.value = index;
                },
                scrollDirection: Axis.horizontal,
              ));
        })),
        CustomBodyButton(isOnbording: true, ontap: () {
          Get.toNamed(AppRoute.chooseRole);
        }),
        SizedBox(
          height: Get.height * .03,
        ),
        onbordingController.carouselIndicator(),
        SizedBox(
          height: Get.height * .03,
        ),
      ],
    ));
  }
}
