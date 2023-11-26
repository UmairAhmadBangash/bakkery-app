import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/bottomsheet.dart';
import '../components/payment-container.dart';
import '../navigation-screen/buttomnavigationbar.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: InkWell(
          child: Column(
            children: [
              SizedBox(
                height: 350.h,
                child: Stack(children: [
                  Container(
                    height: 272.h,
                    width: 375.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffFE5CAD),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(34.w),
                            bottomRight: Radius.circular(34.w))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ButtomNavigationBar()));
                                },
                                child: Image.asset(
                                  "images/back-arrow.png",
                                  height: 31.h,
                                  width: 28.w,
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(120.w)),
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) => Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: 570.h,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  54.w),
                                                          topLeft:
                                                              Radius.circular(
                                                                  54.w))),
                                              child: const ButtomSheet(),
                                            ),
                                          ));
                                },
                                child: Container(
                                  height: 24.h,
                                  width: 24.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.w),
                                  ),
                                  child: const Icon(Icons.add,
                                      color: Color(0xffFE5CAD)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Row(
                            children: [
                              Text(
                                "Payment Methods",
                                style: GoogleFonts.inter(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 170.h,
                    left: 50.w,
                    child: Image.asset(
                      "images/payment-card.png",
                      height: 157.h,
                      width: 271.w,
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 30.h,
              ),
              PaymentConatiner(
                image: "images/paypal-logo.png",
                text: 'PayPal',
              ),
              SizedBox(
                height: 20.h,
              ),
              PaymentConatiner(
                image: 'images/mastercard-logo.png',
                text: 'MasterCard',
              ),
              SizedBox(
                height: 20.h,
              ),
              PaymentConatiner(
                image: 'images/visa-logo.png',
                text: 'Visa',
              ),
              SizedBox(
                height: 20.h,
              ),
              PaymentConatiner(
                image: 'images/amex-logo.png',
                text: 'American Express',
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 93.h,
                width: 375.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35.w),
                      topLeft: Radius.circular(35.w)),
                  color: const Color(0xffFE5CAD),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24.w,
                    ),
                    Text(
                      "Total : \$ 21.00",
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.w),
                                ),
                                actions: [
                                  isChecked == true
                                      ? Column(
                                          children: [
                                            Image.asset(
                                              "images/dilog-box-done.png",
                                              height: 310.h,
                                              width: 290.w,
                                            ),
                                          ],
                                        )
                                      : Image.asset(
                                          "images/dilog-box-failed.png"),
                                ],
                              );
                            });
                      },
                      child: Container(
                        height: 45.h,
                        width: 134.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.w),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "Pay Now",
                            style: GoogleFonts.inter(
                                color: const Color(0xffFE5CAD),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
