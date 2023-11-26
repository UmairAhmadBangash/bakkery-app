import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EyeTextFormFeild extends StatefulWidget {
  String image;
  String hinttext;
  bool obscourtext;

  Color? color;

  EyeTextFormFeild({
    super.key,
    this.obscourtext = true,
    required this.image,
    required this.hinttext,
    this.color,
  });

  @override
  State<EyeTextFormFeild> createState() => _EyeTextFormFeildState();
}

class _EyeTextFormFeildState extends State<EyeTextFormFeild> {
  bool _obscureText = true;

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
            image: AssetImage(widget.image),
            width: 22.w,
            height: 22.h,
          ),
          VerticalDivider(
            width: 30.w,
            thickness: 2.w,
            color: Color(0xffD2D2D2),
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(
            width: 255.w,
            child: TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: widget.hinttext,
                hintStyle: GoogleFonts.inter(
                  color: widget.color,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: _obscureText
                      ? Image.asset(
                          "images/eye-show-logo.png",
                          height: 11.h,
                          width: 19.w,
                    scale: 2.5,
                        )
                      : Image.asset(
                          "images/eye-hide-logo.png",
                          height: 11.h,
                          width: 19.w,
                    scale: 2.5,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
