import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UseBoxContainer extends StatelessWidget {
  double containerheight;
  double containerwidth;
  String image;

  UseBoxContainer(
      {super.key,
      required this.image,
      required this.containerheight,
      required this.containerwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerheight,
      width: containerwidth,
      decoration: BoxDecoration(
        color: const Color(0xffFE5CAD),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Image.asset(
        image,
        height: 22.h,
        width: 10.h,
      )),
    );
  }
}
