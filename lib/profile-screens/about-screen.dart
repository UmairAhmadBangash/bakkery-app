import 'package:bakkeryapp/profile-screens/home-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                    "Lorem Ipsum is simply dummy  text \n"
                    "Lorem Ipsum is simply dummy  te \n"
                    "Lorem Ipsum is simply dummy  text   o \n"
                    "Lorem Ipsum is simply dummy  text \n"
                    "Lorem Ipsum is simply dummy  text   of \n"
                    "Lorem Ipsum is simply dummy\n"
                    "Lorem Ipsum is simply dummy  te \n"
                    "Lorem Ipsum is simply dummy  t \n"
                    "Lorem Ipsum is simpl \n"
                    "Lorem Ipsum is simply dummy  te \n"
                    "Lorem Ipsum is simply dummy  text   of \n"
                    "Lorem Ipsum is simply dummy  text    \n"
                    "Lorem Ipsum is simp \n"
                    "Lorem Ipsum is simply dummy  tex \n"
                    "Lorem Ipsum is simply dumm \n"
                    "Lorem Ipsum is simply dummy  tex \n"
                    "Lorem Ipsum is simply d \n"
                    "Lorem Ipsum is simply dum \n"
                    "Lorem Ipsum is simply dummy  text   of \n"
                    "Lorem Ipsum is simpl \n"
                    "Lorem Ipsum is simply dumm \n"
                    "Lorem Ipsum is sim \n"
                    "Lorem Ipsum i \n"
                    "Lorem Ipsum is simpl\n"
                    "Lorem Ipsum is sim\n"
                    "Lorem Ipsum is simpl\n",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffD2D2D2)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
