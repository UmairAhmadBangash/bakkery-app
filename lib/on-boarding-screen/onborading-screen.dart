import 'package:bakkeryapp/on-boarding-screen/second-screen.dart';
import 'package:bakkeryapp/on-boarding-screen/third-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'first-screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
              ],
            ),
            Container(
              alignment: Alignment(0, 0.10),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                      height: 4.h,
                      color: Color(0xffFE5CAD),
                      width: 24.w,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  dotDecoration: DotDecoration(
                    height: 3.h,
                    width: 24.w,
                    color: Color(0xffD2D2D2),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    dotBorder: DotBorder(
                      color: Color(0xffD2D2D2),
                      width: 1.w,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
