import 'package:bakkeryapp/components/button.dart';
import 'package:bakkeryapp/home-screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/use-row.dart';
import '../navigation-screen/buttomnavigationbar.dart';

class FavoriteDetailsScreen extends StatefulWidget {
  const FavoriteDetailsScreen({super.key});

  @override
  State<FavoriteDetailsScreen> createState() => _FavoriteDetailsScreenState();
}

class _FavoriteDetailsScreenState extends State<FavoriteDetailsScreen> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 45.h),
            child: Row(
              children: [
                Text(
                  "Fav",
                  style: GoogleFonts.inter(
                      fontSize: 28.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Image.asset(
                      "images/heart-logo.png",
                      height: 16.h,
                      width: 16.w,
                      color: isSelected
                          ? const Color(0xffD2D2D2)
                          : const Color(0xffFE5CAD),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/fav-logo.png",
                height: 280.h,
                width: 280.w,
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "No Favorities yet.",
                style: GoogleFonts.inter(
                    fontSize: 22.sp, fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          UseRowText(
            text: 'Click the heart icon on any piece',
          ),
          UseRowText(
            text: 'of content and you see it here ',
          ),
          UseRowText(
            text: ' next time you visit.',
          ),
          SizedBox(
            height: 50.h,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ButtomNavigationBar()));
              },
              child: UseButton(
                text: "Favorite Now",
              ))
        ],
      ),
    ));
  }
}
