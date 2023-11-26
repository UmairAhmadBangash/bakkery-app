import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCakeScreen extends StatelessWidget {
  const OrderCakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 250.h,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipPath(
                    clipper: RoundedDiagonalPathClipper(),
                    child: Container(
                      height: 220.h,
                      width: 157.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0.w)),
                        color: Color(0xffF3E4FE),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 130.h,
                            ),
                            Text(
                              "Special wedding cake",
                              style: GoogleFonts.inter(
                                  fontSize: 11.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 4.h,),
                            Text(
                              "Flower : Creamy",
                              style: GoogleFonts.inter(
                                  fontSize: 11.sp, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 4.h,),
                            Text(
                              "\$34.21",
                              style: GoogleFonts.inter(
                                  fontSize: 12.sp, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "images/add-order.png",
                                  width: 40.w,
                                  height: 37.h,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.w,
                  top: 10.h,
                  // bottom: 100.h,
                  child: Image.asset(
                    "images/order-cake.png",
                    height: 152.h,
                    width: 134.w,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250.h,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipPath(
                    clipper: RoundedDiagonalPathClipper(),
                    child: Container(
                        height: 220.h,
                        width: 157.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25.w)),
                          color: Color(0xffFECEC9),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 130.h,
                              ),
                              Text(
                                "Birthday Cake",
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 4.h,),
                              Text(
                                "Flower : Strawberry",
                                style: GoogleFonts.inter(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4.h,),
                              Text(
                                "\$39.15",
                                style: GoogleFonts.inter(
                                    fontSize: 11.20.sp,
                                    fontWeight: FontWeight.w600),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "images/add-order2.png",
                                    width: 40.w,
                                    height: 37.h,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Positioned(
                  left: 15.w,
                  top: 0,
                  // bottom: 115.h,
                  child: Image.asset(
                    "images/order2-cake.png",
                    height: 152.h,
                    width: 134.w,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
