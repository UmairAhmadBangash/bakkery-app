import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginIconRow extends StatelessWidget {
  const LoginIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "images/google-logo.png",
          width: 30.w,
          height: 30.w,
        ),
        SizedBox(
          width: 40.w,
        ),
        Image.asset(
          "images/facebook-logo.png",
          width: 34.w,
          height: 34.h,
        ),
      ],
    );
  }
}
