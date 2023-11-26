import 'package:bakkeryapp/profile-screens/home-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/faqs-expention-tile.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({super.key});

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
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
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Text(
                  "Frequently Asked",
                  style: GoogleFonts.inter(
                      fontSize: 25.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Text(
                  "Questions",
                  style: GoogleFonts.inter(
                      fontSize: 25.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            FaqsExpentionTile(text: '  How do i update Pineapple?',),
            SizedBox(
              height: 15.h,
            ),
            FaqsExpentionTile(text: '  System related Questions?',),
            SizedBox(
              height: 15.h,
            ),
            FaqsExpentionTile(text: '  Support related questions?',),
          ],
        ),
      ),
    );
  }
}
