import 'package:bakkeryapp/profile-screens/privacy-screen.dart';
import 'package:bakkeryapp/profile-screens/profile-edit-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/profile-image.dart';
import '../components/profile-pic-conatiner.dart';
import '../components/profile-row.dart';
import 'about-screen.dart';
import 'faqs-screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                "Profile",
                style: GoogleFonts.inter(
                    fontSize: 25.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          ProfileImage(
            image: 'images/pin-logo.png',
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileEditScreen()));
            },
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hamza Shinwari",
                style: GoogleFonts.inter(
                    fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 70.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrivacyScreen()));
            },
            child: ProfileRow(
              rowtext: 'Privacy',
              rowimage: 'images/privacy-logo.png',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
            },
            child: ProfileRow(
              rowtext: 'About Us',
              rowimage: 'images/about-logo.png',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ProfileRow(
            rowtext: 'Transactions',
            rowimage: 'images/transactions-logo.png',
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FaqsScreen()));
            },
            child: ProfileRow(
              rowtext: 'Faqs',
              rowimage: 'images/faqs-logo.png',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.w)),
                        actions: [
                          Column(
                            children: [
                              Image.asset("images/logout-dilog.png"),
                            ],
                          )
                        ],
                      );
                    });
              },
              child: ProfileRow(
                rowtext: 'Logout',
                rowimage: 'images/logout-logo.png',
              )),
        ],
      ),
    );
  }
}
