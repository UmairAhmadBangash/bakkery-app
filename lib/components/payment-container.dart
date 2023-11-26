import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentConatiner extends StatefulWidget {
  String image;
  String text;

  PaymentConatiner({super.key, required this.image, required this.text});

  @override
  State<PaymentConatiner> createState() => _PaymentConatinerState();
}

class _PaymentConatinerState extends State<PaymentConatiner> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 65.h,
        width: 327.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                offset: Offset(0, 6),
                spreadRadius: 0,
                blurRadius: 10,
              )
            ]),
        child: Row(
          children: [
            SizedBox(
              width: 24.w,
            ),
            Image.asset(
              widget.image,
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              widget.text,
              style: GoogleFonts.inter(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0D0140)),
            ),
            Spacer(),
            Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.w),
                  border: Border.all(
                    color: isSelected ? Colors.white:Color(0xffFE5CAD),
                    width: 3.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ]),
              child: Padding(
                padding:  EdgeInsets.all(0.2.w),
                child:isSelected ? Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFE5CAD),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.check,
                    color: Colors.white,size: 19.w,
                  )),
                ): null,
              ),
            ),
            SizedBox(
              width: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
