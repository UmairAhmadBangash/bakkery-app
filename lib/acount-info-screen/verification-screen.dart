import 'package:bakkeryapp/acount-info-screen/login-screen.dart';
import 'package:bakkeryapp/acount-info-screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/button.dart';
import '../components/login-icon-row.dart';
import '../components/login-pic-row.dart';
import '../components/text-form-feild.dart';
import '../components/verify-code.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                        image: AssetImage("images/verify-cake.png"),
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
                                  "Verification Code",
                                  style: GoogleFonts.inter(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            VerifyPinPut(),
                            SizedBox(
                              height: 50.h,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: UseButton(
                                text: "Continue",
                              ),
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
