import 'package:doctor/utils/text_style.dart';
import 'package:flutter/material.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("ilara",style: CustomTextStyle.h1(fontSize: 30,),)
        ],
      ),
    );
  }
}
