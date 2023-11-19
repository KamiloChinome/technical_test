import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_test/config/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  static const name = 'splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LottieBuilder.asset(
            'assets/animations/LottieAnimation.json',
            height: 90.w,
            repeat: true,
            reverse: true,
            fit: BoxFit.cover,
          ),
          Container(
            height: 40.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorPrimaryContainer,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.w),
                topRight: Radius.circular(15.w),
              ),
            ),
          )
        ],
      ),
    );
  }
}
