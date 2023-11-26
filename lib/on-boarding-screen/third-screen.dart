import 'package:bakkeryapp/welcome-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),

            SizedBox(
              height: 5.h,
            ),
            Image.asset(
              "images/mix-cake-logo.png",
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
                Text("Find your", style: GoogleFonts.inter(
                    fontSize: 28.sp, fontWeight: FontWeight.w600),),
                SizedBox(width: 5.w,),
                Text("comfort", style: GoogleFonts.inter(fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFE5CAD)),),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 96.w,),
                Text(" food with",style: GoogleFonts.inter(
                    fontSize: 28.sp, fontWeight: FontWeight.w600),),
                SizedBox(width: 5.w,),
                Text("us", style: GoogleFonts.inter(fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFE5CAD)),),
              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                SizedBox(width: 90.w,),
                Text("Enjoy the Experience of  ",style: GoogleFonts.inter(
                    fontSize: 16.sp, fontWeight: FontWeight.w500,color: Colors.grey),),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 75.w,),
                Text("delicius cake for your happy ",style: GoogleFonts.inter(
                    fontSize: 16.sp, fontWeight: FontWeight.w500,color: Colors.grey),),
              ],
            ),
            Row(
              children: [
                Image.asset("images/group-cakes-logo.png",width: 271.w,height: 220.h,),
                SizedBox(width:20.w,),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                },
                    child: Image.asset("images/go-logo.png",width: 60.w,height: 60.h,)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
