import 'package:bakkeryapp/components/button.dart';
import 'package:bakkeryapp/components/use-row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart-order.dart';

class HomeCartScreen extends StatefulWidget {
  const HomeCartScreen({super.key});

  @override
  State<HomeCartScreen> createState() => _HomeCartScreenState();
}

class _HomeCartScreenState extends State<HomeCartScreen> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/cart-logo.png",
                  height: 300.h,
                  width: 300.w,
                ),
              ],
            ),
            SizedBox(height: 50.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Cart is Empty",
                  style: GoogleFonts.inter(
                      fontSize: 22.sp, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            UseRowText(text: "Looks like you haven;t added "),
            UseRowText(text: "anything to your cart yet."),
            SizedBox(height: 50.h,),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartOrderScreen()));
                },
                child: UseButton(text: "Go Home")),
          ],
        ),
      ),
    ));
  }
}
