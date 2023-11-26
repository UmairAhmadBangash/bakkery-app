import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicContainer extends StatefulWidget {
  String image;


  ProfilePicContainer({super.key, required this.image,});

  @override
  State<ProfilePicContainer> createState() => _ProfilePicContainerState();
}

class _ProfilePicContainerState extends State<ProfilePicContainer> {
  File? _image;
  final picker = ImagePicker();

  Future getImager() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {}
    });
  }
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
            image: _image == null
                ? null
                : DecorationImage(
              image: FileImage(_image!),fit: BoxFit.cover),),
        child: _image == null ?
        Stack(
          children: [
            Positioned(
              top: 80.h,
              left: 100.w,
              child: InkWell(
                onTap: (){
                  getImager();
                },
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
                        scale: 2.5),
                  ),
                ),
              ),
            ),
          ],
        ): Stack(
          children: [
            Positioned(
              top: 80.h,
              left: 100.w,
              child: InkWell(
                onTap: (){
                  getImager();
                },
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
                        scale: 3),
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
