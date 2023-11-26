import 'package:bakkeryapp/components/button.dart';
import 'package:bakkeryapp/components/eye-textform-feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../components/profile-pic-conatiner.dart';
import '../components/text-form-feild.dart';
import 'home-screen.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen()));
                    },
                    child: Image.asset(
                      "images/back-arrow.png",
                      height: 27.h,
                      width: 27.w,
                    ),
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
                  Text(
                    "Edit to Profile",
                    style: GoogleFonts.inter(
                        fontSize: 25.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              ProfilePicContainer(
                image: "images/camra-logo.png",
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Change Picture",
                style: GoogleFonts.inter(
                    fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40.h,
              ),
              UseTextFormFeild(
                image: 'images/profile-logo.png',
                hinttext: 'Name',
                color: const Color(0xffD2D2D2),
              ),
              SizedBox(
                height: 15.h,
              ),
              UseTextFormFeild(
                image: 'images/email-logo.png',
                hinttext: 'Email',
                color: const Color(0xffD2D2D2),
              ),
              SizedBox(
                height: 15.h,
              ),
              UseTextFormFeild(
                image: 'images/call-logo.png',
                hinttext: 'Phone Number',
                color: const Color(0xffD2D2D2),
              ),
              SizedBox(
                height: 15.h,
              ),
              EyeTextFormFeild(
                image: "images/password-logo.png",
                hinttext: "Password",
                color: const Color(0xffD2D2D2),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  child: UseButton(text: "Updates"))
            ],
          ),
        ),
      ),
    );
  }
}
