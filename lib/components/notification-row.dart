import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationRow extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String text4;

  NotificationRow(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24.w,
        ),
        Container(
          height: 90.h,
          width: 327.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.w),
              color: const Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]),
          child: Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
              SizedBox(
                height: 28.h,
              ),
              Image.asset(
                "images/bill-icon.png",
                height: 34.h,
                width: 34.w,
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 180.w,
                        child: Text(
                          text1,
                          style: GoogleFonts.inter(
                              fontSize: 15.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        text4,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: const Color(0xffFE5CAD),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    text2,
                    style: GoogleFonts.inter(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffD2D2D2)),
                  ),
                  Text(
                    text3,
                    style: GoogleFonts.inter(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffD2D2D2)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
