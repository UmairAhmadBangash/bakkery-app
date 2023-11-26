import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleTextFormFeild extends StatelessWidget {

  Image? suffiximage;
  String hinttext;

   SimpleTextFormFeild({super.key,this.suffiximage,required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 66.h,
      decoration: BoxDecoration(
        color: const Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 7.h),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: hinttext,
                hintStyle: GoogleFonts.inter(color: const Color(0xffD2D2D2),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
                suffixIcon: suffiximage,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
            ),
          ),
        ),
      ),
    );
  }
}
