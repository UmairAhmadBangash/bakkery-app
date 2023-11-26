import 'package:bakkeryapp/welcome-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    },
                    child: Image.asset(
                      "images/skip-logo.png",
                      height: 50.h,
                      width: 50.w,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Image.asset(
                "images/cake-logo.png",
                width: 302.w,
                height: 300.h,
              ),
              SizedBox(
                height: 85.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Welcome to",
                    style: GoogleFonts.inter(
                        fontSize: 28.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Text(
                    "Cake’s",
                    style: GoogleFonts.inter(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFE5CAD)),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 92.w,
                  ),
                  Text(
                    "Ke Patis",
                    style: GoogleFonts.inter(
                        fontSize: 28.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "series",
                    style: GoogleFonts.inter(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFE5CAD)),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 85.w,
                  ),
                  Text(
                    "Handmade By Owner with ",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    "an extra pintch of love",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "images/group-cakes-logo.png",
                    width: 271.w,
                    height: 220.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "images/next-logo.png",
                    width: 60.w,
                    height: 60.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
