import 'package:bakkeryapp/home-screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/popular-cake-container.dart';
import '../navigation-screen/buttomnavigationbar.dart';

class PopularCakeScreen extends StatefulWidget {
  const PopularCakeScreen({super.key});

  @override
  State<PopularCakeScreen> createState() => _PopularCakeScreenState();
}

class _PopularCakeScreenState extends State<PopularCakeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ButtomNavigationBar()));
                  },
                  child: Image.asset(
                    "images/back-arrow.png",
                    width: 22.w,
                    height: 31.h,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25.w,
                ),
                Text(
                  "Popular Cake",
                  style: GoogleFonts.inter(
                      fontSize: 28.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            PopularCakeContainer(
              containercolor: const Color(0xffFECEC9),
              containerimage: "images/pink-cake.png",
            ),
            SizedBox(
              height: 20.h,
            ),
            PopularCakeContainer(
              containercolor: const Color(0xffFFDC90),
              containerimage: "images/white-cake.png",
            ),
            SizedBox(
              height: 20.h,
            ),
            PopularCakeContainer(
              containercolor: const Color(0xffCFE5FF),
              containerimage: "images/mix-cake.png",
            ),
            SizedBox(
              height: 20.h,
            ),
            PopularCakeContainer(
              containercolor: const Color(0xffFFE55E),
              containerimage: "images/mengo-cake.png",
            ),
            SizedBox(
              height: 20.h,
            ),
            PopularCakeContainer(
              containercolor: const Color(0xffF1D9B6),
              containerimage: "images/pink-cake.png",
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    ));
  }
}
