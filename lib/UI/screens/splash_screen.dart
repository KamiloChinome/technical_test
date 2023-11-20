import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_test/config/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  static const name = 'splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        context.pushReplacementNamed('home');
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorPrimaryContainer,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(37.5.h),
                bottomRight: Radius.circular(37.5.h),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  'assets/animations/LottieAnimation.json',
                  controller: _animationController,
                  animate: false,
                  frameRate: FrameRate.max,
                  repeat: true,
                  reverse: true,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Kamilo Chinome',
                  style: textStyle.titleLarge,
                ),
                Text(
                  'Desarrollador de Aplicaciones Móviles',
                  style: textStyle.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
