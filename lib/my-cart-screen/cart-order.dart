import 'package:bakkeryapp/components/button.dart';
import 'package:bakkeryapp/my-cart-screen/payment-method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/box-container.dart';

class CartOrderScreen extends StatefulWidget {
  const CartOrderScreen({super.key});

  @override
  State<CartOrderScreen> createState() => _CartOrderScreenState();
}

class _CartOrderScreenState extends State<CartOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
              child: Row(
                children: [
                  Text(
                    "My Cart",
                    style: GoogleFonts.inter(
                        fontSize: 25.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120.h,
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Container(
                    height: 90.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff000000).withOpacity(.04),
                              offset: const Offset(0, 6),
                              blurRadius: 23,
                              spreadRadius: 0),
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35.w),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 58.h,
                              ),
                              Text(
                                "\$39.15",
                                style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Birthday Cake",
                                  style: GoogleFonts.inter(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Flower : Strawberry",
                                  style: GoogleFonts.inter(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                UseBoxContainer(
                                  image: 'images/add-logo.png',
                                  containerheight: 22.h,
                                  containerwidth: 23.w,
                                ),
                                SizedBox(
                                    height: 22.h,
                                    width: 27.w,
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.sp),
                                    ))),
                                UseBoxContainer(
                                  image: 'images/min-logo.png',
                                  containerheight: 22.h,
                                  containerwidth: 23.w,
                                ),
                                SizedBox(
                                  width: 37.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 38.h,
                  left: 24.w,
                  child: Image.asset(
                    "images/pink-cake.png",
                    height: 80.h,
                    width: 87.w,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 120.h,
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Container(
                    height: 90.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff000000).withOpacity(.04),
                              offset: const Offset(0, 6),
                              blurRadius: 23,
                              spreadRadius: 0),
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35.w),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 58.h,
                              ),
                              Text(
                                "\$39.15",
                                style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Birthday Cake",
                                  style: GoogleFonts.inter(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Flower : Strawberry",
                                  style: GoogleFonts.inter(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                UseBoxContainer(
                                  image: 'images/add-logo.png',
                                  containerheight: 22.h,
                                  containerwidth: 23.w,
                                ),
                                SizedBox(
                                    height: 22.h,
                                    width: 27.w,
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.sp),
                                    ))),
                                UseBoxContainer(
                                  image: 'images/min-logo.png',
                                  containerheight: 22.h,
                                  containerwidth: 23.w,
                                ),
                                SizedBox(
                                  width: 37.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 38.h,
                  left: 24.w,
                  child: Image.asset(
                    "images/pink-cake.png",
                    height: 80.h,
                    width: 87.w,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 120.h,
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Container(
                    height: 90.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff000000).withOpacity(.04),
                              offset: const Offset(0, 6),
                              blurRadius: 23,
                              spreadRadius: 0),
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35.w),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 58.h,
                              ),
                              Text(
                                "\$39.15",
                                style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Birthday Cake",
                                  style: GoogleFonts.inter(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Flower : Strawberry",
                                  style: GoogleFonts.inter(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                UseBoxContainer(
                                  image: 'images/add-logo.png',
                                  containerheight: 22.h,
                                  containerwidth: 23.w,
                                ),
                                SizedBox(
                                    height: 22.h,
                                    width: 27.w,
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.sp),
                                    ))),
                                UseBoxContainer(
                                  image: 'images/min-logo.png',
                                  containerheight: 22.h,
                                  containerwidth: 23.w,
                                ),
                                SizedBox(
                                  width: 37.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 38.h,
                  left: 24.w,
                  child: Image.asset(
                    "images/pink-cake.png",
                    height: 80.h,
                    width: 87.w,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffFE5CAD),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9.w),
                        bottomLeft: Radius.circular(9.w),
                      )),
                  child: Center(
                    child: Text(
                      "06 Items",
                      style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 55.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFD8EB),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(9.w),
                      bottomRight: Radius.circular(9.w),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Total: \$21.00 ",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
                child: UseButton(text: "Pay Now")),
          ],
        ),
      ),
    ));
  }
}
