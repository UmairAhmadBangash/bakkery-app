
import 'package:bakkeryapp/profile-screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../favourite-screen/home-screen.dart';
import '../home-screens/home-screen.dart';
import '../my-cart-screen/home-screen.dart';
import '../notifcation-screens/notification-details.dart';


class ButtomNavigationBar extends StatefulWidget {
  const ButtomNavigationBar({super.key});

  @override
  State<ButtomNavigationBar> createState() => _ButtomNavigationBarState();
}

class _ButtomNavigationBarState extends State<ButtomNavigationBar> {
  var currentIndex = 0;

  List<model> modellist = [
    model(image: "home-logo.png"),
    model(image: "favorite-logo.png"),
    model(image: "add-cart.png"),
    model(image: "notification-logo.png"),
    model(image: "navigation-profile-logo.png"),
  ];

  List screen = [
    const HomeScreen(),
    const FavouriteScreen(),
    const HomeCartScreen(),
    const NotificationDetails(),
    const ProfileScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screen[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: 66.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50.w),
        ),
        child: ListView.builder(
          itemCount:modellist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: 68.w,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: 34.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Color(0xffF7D0E4).withOpacity(.6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50.w),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 68.w,
                  alignment: Alignment.center,
                  child: Image.asset("images/${modellist[index].image}",
                    width: 22.w,
                    color: index == currentIndex
                        ? Color(0xffFFE5CAD)
                        : Color(0xffF7D0E4),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }

}

class model {
  String image;
  model({required this.image});
}