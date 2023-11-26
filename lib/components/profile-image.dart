import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatefulWidget {
  String image;
   VoidCallback? ontap;

  ProfileImage({super.key, required this.image,this.ontap});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      child: Container(
        height: 120.h,
        width: 120.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 3.w,
            color: const Color(0xffFE5CAD),
          ),
          color: Colors.black,
          image:  DecorationImage(
              image:AssetImage("images/profile-pic.png"),),),
        child: Stack(
          children: [
            Positioned(
              top: 80.h,
              left: 100.w,
              child: InkWell(
                onTap:widget.ontap,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFD8EB),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.w,
                      color: const Color(0xffFE5CAD),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.image,
                        ),
                        scale: 2.5,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
