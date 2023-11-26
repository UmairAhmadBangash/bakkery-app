import 'package:bakkeryapp/acount-info-screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UsePicRow extends StatelessWidget {
  String text;
  VoidCallback ontap;
   UsePicRow({super.key,required this.text,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "images/left-cake-logo.png",
          width: 80.w,
          height: 90.h,
        ),
        GestureDetector(
          onTap: ontap,
          child: Container(
            height: 55.h,
            width: 215.w,
            child: Center(
              child: Text(text,
                style: GoogleFonts.poppins(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB1B1B1)),
              ),
            ),
          ),
        ),
        Image.asset(
          "images/right-cake-logo.png",
          width: 80.w,
          height: 90.h,
        ),
      ],
    );
  }
}