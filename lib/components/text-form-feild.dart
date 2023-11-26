import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UseTextFormFeild extends StatelessWidget {
  String image;
  String hinttext;
 Color? color;
  UseTextFormFeild(
      {super.key, required this.image, required this.hinttext,this.color,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffF8F8F8),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 15.h,
          ),
          Image(
            image: AssetImage(image),
            width: 22.w,
            height: 22.h,
          ),
          VerticalDivider(
            width: 30.w,
            thickness: 2,
            color: Color(0xffD2D2D2),
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(
            width: 255.w,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: GoogleFonts.inter(
                    color: color,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
