import 'package:bakkeryapp/welcome-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                    },
                    child: Image.asset(
                      "images/skip-logo.png",
                      height: 50.h,
                      width: 50.w,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Image.asset(
                "images/icecream-logo.png",
                width: 302.w,
                height: 300.h,
              ),
              SizedBox(
                height: 85.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 15.w,),
                  Text("Quick Fresh", style: GoogleFonts.inter(
                      fontSize: 28.sp, fontWeight: FontWeight.w600),),
                  SizedBox(width: 7.w,),
                  Text("&", style: GoogleFonts.inter(fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFE5CAD)),),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 70.w,),
                  Text("Delicious",style: GoogleFonts.inter(
                      fontSize: 28.sp, fontWeight: FontWeight.w600),),
                  SizedBox(width: 7.w,),
                  Text("Bakery", style: GoogleFonts.inter(fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFE5CAD)),),
                ],
              ),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  SizedBox(width: 80.w,),
                  Text("Made By hand from scratch ",style: GoogleFonts.inter(
                      fontSize: 16.sp, fontWeight: FontWeight.w500,color: Colors.grey),),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 155.w,),
                  Text("with love ",style: GoogleFonts.inter(
                      fontSize: 16.sp, fontWeight: FontWeight.w500,color: Colors.grey),),
                ],
              ),
              Row(
                children: [
                  Image.asset("images/group-cakes-logo.png",width: 271.w,height: 220.h,),
                  SizedBox(width:20.w,),
                  GestureDetector(child: Image.asset("images/next-logo.png",width: 60.w,height: 60.h,)),
                ],
              ),

            ],
          ),
        ),
    );
  }
}
