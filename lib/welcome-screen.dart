import 'package:bakkeryapp/acount-info-screen/login-screen.dart';
import 'package:bakkeryapp/acount-info-screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(
                  "images/welcome-logo.png",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "images/splash-logo.png",
                            width: 106.w,
                            height: 71.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 400.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          "Good bread makes",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 28.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          "good day",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 28.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Container(
                            width: 245.w,
                            height: 46.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.pink,
                            ),
                            child: Center(
                                child: Text(
                              "Login",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                          },
                          child: Container(
                            width: 245.w,
                            height: 46.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(width: 2, color: Colors.white)),
                            child: Center(
                                child: Text(
                              "Sign Up",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
