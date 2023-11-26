import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesContainer extends StatelessWidget {
  String containerimage1;
  String text1;
  String text2;
  String containerimage2;

  CategoriesContainer(
      {super.key,
      required this.containerimage1,
      required this.containerimage2,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25.w,
        ),
        Container(
          width: 150.w,
          height: 150.h,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Image.asset(
                containerimage1,
                width: 68.w,
                height: 56.h,
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                text1,
                style: GoogleFonts.inter(
                    fontSize: 17.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        Container(
          width: 150.w,
          height: 150.h,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Image.asset(
                containerimage2,
                width: 68.w,
                height: 56.h,
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(text2,style: GoogleFonts.inter(
                  fontSize: 17.sp, fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ],
    );
  }
}
