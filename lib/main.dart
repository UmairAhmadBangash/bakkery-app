import 'package:bakkeryapp/acount-info-screen/forget-screen.dart';
import 'package:bakkeryapp/profile-screens/profile-edit-screen.dart';
import 'package:bakkeryapp/splash-screen.dart';
import 'package:bakkeryapp/welcome-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'acount-info-screen/login-screen.dart';
import 'acount-info-screen/sign_up.dart';
import 'acount-info-screen/verification-screen.dart';
import 'home-screens/home-screen.dart';
import 'home-screens/order-details-screen.dart';
import 'home-screens/popular-cake-screen.dart';
import 'navigation-screen/buttomnavigationbar.dart';
import 'on-boarding-screen/onborading-screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
    home:SplashScreen(),
    );
  }
}
