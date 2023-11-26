import 'package:bakkeryapp/models/home-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../models/card-model.dart';
import 'fav-screen.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<card> item = [
    card(
      text: "Birthday Cake",
      image: 'images/mix-cake.png',
      text2: '\$33.15',
    ),
    card(
      text: "Birthday Cake",
      image: 'images/choclate-cake.png',
      text2: '\$33.15',
    ),
    card(
      text: "Birthday Cake",
      image: 'images/stobery-cake.png',
      text2: '\$33.15',
    ),
    card(
      text: "Birthday Cake",
      image: 'images/white-cake.png',
      text2: '\$33.15',
    ),
    card(
      text: "Birthday Cake",
      image: 'images/forget-cake.png',
      text2: '\$33.15',
    ),
    card(
      text: "Birthday Cake",
      image: 'images/pink-cake.png',
      text2: '\$33.15',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Text(
                  "Favourite",
                  style: GoogleFonts.inter(
                      fontSize: 25.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 240,
                    crossAxisCount: 2,
                    crossAxisSpacing: 35,
                    mainAxisSpacing: 35,
                  ),
                  itemCount: item.length,
                  itemBuilder: (context, index) {
                    return Transform.translate(
                      offset: Offset(0, index.isOdd ? 40 : 00),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FavoriteDetailsScreen()));
                        },
                        child: Container(
                          height: 161.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xff000000).withOpacity(.04),
                                  offset: const Offset(0, 6),
                                  blurRadius: 23,
                                  spreadRadius: 5),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 5.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          item[index].current =
                                              !item[index].current;
                                        });
                                      },
                                      child: Container(
                                        height: 25.h,
                                        width: 25.w,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffEDECEC),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "images/heart-logo.png",
                                          height: 11.h,
                                          width: 11.w,
                                          scale: 7,
                                          color: item[index].current
                                              ? const Color(0xffD2D2D2)
                                              : const Color(0xffFE5CAD),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                item[index].image,
                                height: 76.h,
                                width: 90.w,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                item[index].text,
                                style: GoogleFonts.inter(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                item[index].text2,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    ));
  }
}
