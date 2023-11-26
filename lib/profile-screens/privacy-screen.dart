import 'package:bakkeryapp/profile-screens/home-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Image.asset(
                  "images/back-arrow.png",
                  height: 27.h,
                  width: 27.w,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                "About Us",
                style: GoogleFonts.inter(
                    fontSize: 25.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffD2D2D2)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                "Help Us",
                style: GoogleFonts.inter(
                    fontSize: 25.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is simply dummy  text   of \n"
                        "Lorem Ipsum is  \n",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffD2D2D2)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
