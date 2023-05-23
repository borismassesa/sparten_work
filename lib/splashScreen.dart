// ignore: file_names
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sparten_work/onboardingScreen.dart';
import 'package:sparten_work/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    Timer(const Duration(milliseconds: 3000), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
            duration: 3000,
            splash: SizedBox(
              child: Image.asset(
                'assets/splashScreen.png',
                width: 250,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),
            nextScreen: const OnboardingScreen(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.scale,
            backgroundColor: primaryColor),
      ),
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Container(
  //         decoration: const BoxDecoration(
  //           gradient: LinearGradient(
  //             begin: Alignment.topRight,
  //             end: Alignment.bottomLeft,
  //             colors: [
  //               primaryColor, // Blue
  //               accentColorLightBlue, // Light Blue
  //               //Color(0xffFD7E14), // Orange
  //             ],
  //           ),
  //         ),
  //         child: AnimatedSplashScreen(
  //             duration: 5000,
  //             splash: SizedBox(
  //               child: Image.asset(
  //                 'assets/splashScreen.png',
  //                 width: 250,
  //                 height: 150,
  //                 fit: BoxFit.contain,
  //               ),
  //             ),
  //             nextScreen: const OnboardingScreen(),
  //             splashTransition: SplashTransition.fadeTransition,
  //             pageTransitionType: PageTransitionType.scale,
  //             // Use Colors.transparent or a color that matches the gradient's end color
  //             backgroundColor: Colors.transparent),
  //       ),
  //     ),
  //   );
  // }

