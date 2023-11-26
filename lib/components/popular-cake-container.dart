import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCakeContainer extends StatelessWidget {
  Color containercolor;
  String containerimage;

  PopularCakeContainer(
      {super.key, required this.containercolor, required this.containerimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 327.w,
              height: 97.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: containercolor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25.h,
                      ),
                      Text(
                        "Birthday Cake",
                        style: GoogleFonts.inter(
                            fontSize: 15.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25.h,
                      ),
                      Text(
                        "Flower : Strawberry",
                        style: GoogleFonts.inter(
                            fontSize: 10.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    children: [
                      SizedBox(
                        width: 25.h,
                      ),
                      Container(
                        width: 46.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffFE5CAD),
                        ),
                        child: Center(
                            child: Text(
                          "Add To Cart",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    containerimage,
                    height: 98.h,
                    width: 108.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:  EdgeInsets.only(right: 36.w,top: 5.h),
                  child: Text(
                    "\$39.15",
                    style: GoogleFonts.inter(
                        fontSize: 15.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
