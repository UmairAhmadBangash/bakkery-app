import 'package:bakkeryapp/acount-info-screen/sign_up.dart';
import 'package:bakkeryapp/acount-info-screen/verification-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/button.dart';
import '../components/login-icon-row.dart';
import '../components/login-pic-row.dart';
import '../components/text-form-feild.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 1020.h,
          child: Stack(
            children: [
              Row(
                children: [
                  Stack(children: [
                    SizedBox(
                      height: 400.h,
                      width: 360.w,
                      child: const Image(
                        image: AssetImage(
                          "images/login-color-logo.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: 215.r,
                      top: 120.h,
                      child: Image(
                        image: AssetImage("images/forget-cake.png"),
                        width: 135.w,
                      ),
                    ),
                  ]),
                ],
              ),
              DraggableScrollableSheet(
                  maxChildSize: 0.69,
                  minChildSize: 0.69,
                  initialChildSize: 0.69,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return Container(
                      height: 100.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80),
                            topRight: Radius.circular(80)),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30.w,
                                ),
                                Text(
                                  "Forgot Password",
                                  style: GoogleFonts.inter(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            UseTextFormFeild(
                              image: "images/email-logo.png",
                              hinttext: "Email",
                              color: Color(0xffD2D2D2),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            UseButton(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VerificationScreen()));
                              },
                              text: "Continue",
                            ),
                            SizedBox(
                              height: 45.h,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
