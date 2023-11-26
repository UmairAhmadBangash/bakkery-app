import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UseButton extends StatelessWidget {
  String text;
  VoidCallback? ontap;

  UseButton({super.key, required this.text,this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 327.w,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFE5CAD),
        ),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600, fontSize: 18.sp, color: Colors.white),
        )),
      ),
    );
  }
}
