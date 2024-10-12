
import 'package:get/get.dart';
import 'package:doctor/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomCarouselItem extends StatelessWidget {
  final String image;
  final String heading;
  final String desce;
  const CustomCarouselItem({
    super.key,
    required this.image,
    required this.heading,
    required this.desce,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 450.h,
              width: Get.width,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    heading,
                    style: CustomTextStyle.h1(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(desce,
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.h3(fontSize: 14))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
