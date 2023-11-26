import 'package:bakkeryapp/acount-info-screen/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/button.dart';
import '../components/eye-textform-feild.dart';
import '../components/login-icon-row.dart';
import '../components/login-pic-row.dart';
import '../components/text-form-feild.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 893));
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
                        image: AssetImage("images/login-color-logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: 215.r,
                      top: 120.h,
                      child: Image(
                        image: const AssetImage("images/signup-cake.png"),
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
                      height: 80.h,
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
                              height: 30.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 24.w,
                                ),
                                Text(
                                  "Please Sign Up",
                                  style: GoogleFonts.inter(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            UseTextFormFeild(
                              image: "images/profile-logo.png",
                              hinttext: 'Name',
                              color: Color(0xffD2D2D2),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            UseTextFormFeild(
                              image: "images/email-logo.png",
                              hinttext: 'Email',
                              color: Color(0xffD2D2D2),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            EyeTextFormFeild(
                              image: "images/password-logo.png",
                              hinttext: "Password",
                              color: Color(0xffD2D2D2),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            UseButton(
                              text: "Sign UP",
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LoginScreen()));
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "or continue as Guest",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffB1B1B1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            const LoginIconRow(),
                            UsePicRow(
                              text: 'Al Ready have an account sign In',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LoginScreen()));
                              },
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
