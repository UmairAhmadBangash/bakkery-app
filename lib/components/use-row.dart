import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UseRowText extends StatelessWidget {
  String text;
   UseRowText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffD2D2D2)),
        )
      ],
    );
  }
}
