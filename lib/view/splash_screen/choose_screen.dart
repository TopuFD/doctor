import 'package:doctor/widgets/custom_body_btn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor/utils/color.dart';
import 'package:doctor/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  bool? isPatient = false;
  bool? isDoctor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.width * .2,
            ),
            Text(
              "ilara",
              style: CustomTextStyle.h1(fontSize: 40, letterSpacing: 0),
            ),
            SizedBox(
                width: 70.w,
                child: Divider(
                  color: AppColor.black,
                  height: 2.h,
                  thickness: 3.0,
                )),
            SizedBox(
              height: 30.h,
            ),
            Text('Choose your role',
                textAlign: TextAlign.center,
                style: CustomTextStyle.h1(color: AppColor.black75)),
            SizedBox(
              height: 50.h,
            ),
            //===========================================radio button for patient==============>
            Row(
              children: [
                Radio(
                    value: true,
                    groupValue: isPatient,
                    onChanged: (val) {
                      setState(() {
                        isDoctor = false;
                        isPatient = val;
                      });
                    }),
                Text(
                  'Patient',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                ),
              ],
            ),
            //===========================================radio button for doctor==============>
            Row(
              children: [
                Radio(
                    value: true,
                    groupValue: isDoctor,
                    onChanged: (val) {
                      setState(() {
                        isPatient = false;
                        isDoctor = val;
                      });
                    }),
                Text(
                  'Health Professional',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomBodyButton(
              ontap: () {},
              isOnbording: false,
              btnTitle: "Continue",
            )
          ],
        ),
      ),
    );
  }
}
