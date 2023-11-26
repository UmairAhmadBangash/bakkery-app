import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../acount-info-screen/forget-screen.dart';
import '../acount-info-screen/sign_up.dart';
import '../components/box-container.dart';
import '../components/button.dart';
import '../components/login-icon-row.dart';
import '../components/login-pic-row.dart';
import '../components/popular-cake-container.dart';
import '../components/text-form-feild.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../navigation-screen/buttomnavigationbar.dart';
import 'categories-screen.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF3E4FE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ButtomNavigationBar()));
                    },
                    child: Image.asset(
                      "images/back-arrow.png",
                      width: 22.w,
                      height: 31.h,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Container(
                      height: 42.h,
                      width: 42.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white38,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Image.asset(
                          "images/heart-logo.png",
                          color: isSelected
                              ? const Color(0xffD2D2D2)
                              : const Color(0xffFE5CAD),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 760.h,
              width: 450.w,
              child: Stack(
                children: [
                  DraggableScrollableSheet(
                      maxChildSize: 0.9,
                      minChildSize: 0.75,
                      initialChildSize: 0.75,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return Container(
                          height: 100.h,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 110.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 100.r),
                                child: Text(
                                  "Special wedding cake",
                                  style: GoogleFonts.inter(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Container(
                                    height: 55.h,
                                    width: 158.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xffFFFFFF),
                                      boxShadow: [
                                        BoxShadow(
                                            color: const Color(0xff000000)
                                                .withOpacity(.04),
                                            offset: const Offset(0, 5),
                                            blurRadius: 16,
                                            spreadRadius: 5),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Image.asset(
                                          "images/stobreey-logo.png",
                                          height: 30.h,
                                          width: 30.w,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "Strawberry",
                                          style: GoogleFonts.inter(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 55.h,
                                    width: 158.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xffFFFFFF),
                                      boxShadow: [
                                        BoxShadow(
                                            color: const Color(0xff000000)
                                                .withOpacity(.04),
                                            offset: const Offset(0, 5),
                                            blurRadius: 16,
                                            spreadRadius: 5),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Image.asset(
                                          "images/choclate-logo.png",
                                          height: 30.h,
                                          width: 30.w,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "Chocolate",
                                          style: GoogleFonts.inter(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              SizedBox(
                                width: 330.w,
                                height: 150.h,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Description",
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20.sp),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Strawberry cake is a cake that uses\n"
                                          "strawberry as a primary i Strawberries\n"
                                          "may be used in the cake batter, atop\n"
                                          "cakes and in a strawberry cake frasting.",
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.sp,
                                              color: const Color(0xffD2D2D2)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.w),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffFE5CAD),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                          child: Image.asset(
                                        "images/min-logo.png",
                                        height: 22.h,
                                        width: 10.h,
                                      )),
                                    ),
                                    Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "2",
                                        style: GoogleFonts.inter(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w600),
                                      )),
                                    ),
                                    Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color(0xffFE5CAD),
                                      ),
                                      child: Center(
                                          child: Image.asset(
                                        "images/add-logo.png",
                                        width: 10.w,
                                        height: 22.h,
                                      )),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "\$500",
                                      style: GoogleFonts.inter(
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ButtomNavigationBar()));
                                  },
                                  child: UseButton(text: "Order Now")),
                            ],
                          ),
                        );
                      }),
                  Positioned(
                    top: 25.h,
                    left: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/order-cake.png",
                          height: 245.h,
                          width: 215.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
