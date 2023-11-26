import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileRow extends StatelessWidget {
  String rowtext;
  String rowimage;

  ProfileRow({super.key, required this.rowtext, required this.rowimage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24.w,
        ),
        Image.asset(
          rowimage,
          height: 34.h,
          width: 34.w,
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(
          rowtext,
          style:
              GoogleFonts.inter(fontSize: 15.sp, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
