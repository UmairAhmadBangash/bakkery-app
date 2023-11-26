import 'package:bakkeryapp/components/button.dart';
import 'package:bakkeryapp/components/simple-textfeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomSheet extends StatefulWidget {
  const ButtomSheet({super.key});

  @override
  State<ButtomSheet> createState() => _ButtomSheetState();
}

class _ButtomSheetState extends State<ButtomSheet> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20.h,
          ),
       Container(
         height: 6.h,
         width: 60.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffD2D2D2),
        ),
       ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Text(
              "Add new card",
              style:
                  GoogleFonts.inter(fontSize: 22.sp, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SimpleTextFormFeild(
            hinttext: 'Name on card',
          ),
          SizedBox(
            height: 15.h,
          ),
          SimpleTextFormFeild(
            hinttext: 'Card Number',
          ),
          SizedBox(
            height: 15.h,
          ),
          SimpleTextFormFeild(
            suffiximage: Image.asset(
              "images/upload-logo.png",
              height: 19.h,
              width: 17.w,
              scale: 3,
            ),
            hinttext: 'Expire Date',
          ),
          SizedBox(
            height: 15.h,
          ),
          SimpleTextFormFeild(
            hinttext: 'Cvv Code',
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.w),
                      border: Border.all(
                        color: isSelected ? Colors.white : Color(0xffFE5CAD),
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
                    child: isSelected
                        ? Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFE5CAD),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15.w,
                            )),
                          )
                        : null,
                  ),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "Save Card Details",
                style: GoogleFonts.inter(
                    fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          UseButton(text: "Add Card"),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
