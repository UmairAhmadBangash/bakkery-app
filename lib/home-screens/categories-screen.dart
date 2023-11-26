import 'package:bakkeryapp/home-screens/popular-cake-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/categories-container.dart';
import '../navigation-screen/buttomnavigationbar.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
                            builder: (context) => ButtomNavigationBar()));
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
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25.w,
                ),
                Text(
                  "Categories",
                  style: GoogleFonts.inter(
                      fontSize: 28.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            CategoriesContainer(
              containerimage1: 'images/pizza-logo.png',
              text1: 'Pizza',
              text2: 'Donut',
              containerimage2: 'images/donat-logo.png',
            ),
            SizedBox(
              height: 20.h,
            ),
            CategoriesContainer(
              containerimage1: 'images/menu-cake.png',
              containerimage2: 'images/burger-logo.png',
              text1: 'Cake',
              text2: 'Burger',
            ),
            SizedBox(
              height: 20.h,
            ),
            CategoriesContainer(
              containerimage1: 'images/popcon-logo.png',
              containerimage2: 'images/cookies-logo.png',
              text1: 'Popcon',
              text2: 'Cookies',
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    ));
  }
}
