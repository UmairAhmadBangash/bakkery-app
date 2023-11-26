import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UseContainer extends StatefulWidget {
  String image;
  String text;
  Color colors;
Color textcolor;
  UseContainer({
    super.key,
    required this.image,
    required this.text,
    required this.colors,
    required this.textcolor
  });

  @override
  State<UseContainer> createState() => _UseContainerState();
}

class _UseContainerState extends State<UseContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      decoration: BoxDecoration(
        color: widget.colors,
        borderRadius: BorderRadius.circular(80),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 45.h,
            width: 45.w,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    widget.image,
                  ),
                  scale: 2.4,
                )),
          ),
          SizedBox(
            height: 13.h,
          ),
          Text(
            widget.text,
            style: GoogleFonts.inter(
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
              color: widget.textcolor,
            ),
          ),
        ],
      ),
    );
  }
}
