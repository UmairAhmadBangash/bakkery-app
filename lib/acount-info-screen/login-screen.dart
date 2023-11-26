import 'package:bakkeryapp/acount-info-screen/forget-screen.dart';
import 'package:bakkeryapp/acount-info-screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/button.dart';
import '../components/eye-textform-feild.dart';
import '../components/login-icon-row.dart';
import '../components/login-pic-row.dart';
import '../components/text-form-feild.dart';
import '../navigation-screen/buttomnavigationbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      top: 110.h,
                      child: Image(
                        image: AssetImage("images/login-cake.png"),
                        width: 135.w,
                      ),
                    ),
                  ]),
                ],
              ),
              DraggableScrollableSheet(
                  maxChildSize: 0.80,
                  minChildSize: 0.70,
                  initialChildSize: 0.70,
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
                                  width: 24.w,
                                ),
                                Text(
                                  "Please Login",
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
                              image: "images/email-logo.png",
                              hinttext: "Email",
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
                              height: 15.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgetScreen()));
                                  },
                                  child: Text(
                                    "Forgot password?",
                                    style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff0D0140)),
                                  ),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            UseButton(
                              text: "Login",
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ButtomNavigationBar()));
                              },
                            ),
                            SizedBox(
                              height: 35.h,
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
                              height: 50.h,
                            ),
                            LoginIconRow(),
                            UsePicRow(
                              text: 'Al Ready have an account sign Up',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()));
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
