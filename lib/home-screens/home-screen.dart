import 'package:bakkeryapp/home-screens/popular-cake-screen.dart';
import 'package:bakkeryapp/models/home-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../components/order-cake-component.dart';
import '../components/text-form-feild.dart';
import '../components/use-container.dart';
import 'categories-screen.dart';
import 'order-details-screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIdx = -1;

  List<HomeModel> model = [
    HomeModel(image: "images/menu-cake.png", title: "Cake"),
    HomeModel(image: 'images/pizza-logo.png', title: "Cake"),
    HomeModel(image: 'images/donat-logo.png', title: "Cake"),
    HomeModel(image: 'images/burger-logo.png', title: "Cake"),
    HomeModel(image: 'images/popcon-logo.png', title: "Cake"),
    HomeModel(image: 'images/pizza-logo.png', title: "Cake"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/more-logo.png",
                    height: 20.h,
                    width: 20.w,
                  ),
                  Text("Explore",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600, fontSize: 18.sp)),
                  Image.asset(
                    "images/man-logo.png",
                    height: 40.h,
                    width: 40.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(width: 25.w),
                Text(
                  "Welcome!",
                  style: GoogleFonts.inter(
                      fontSize: 28.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            UseTextFormFeild(
              image: 'images/search-logo.png',
              hinttext: 'Search',
              color: Color(0xffD2D2D2),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.inter(
                        fontSize: 20.sp, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoriesScreen()));
                    },
                    child: Text(
                      "See More",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffD2D2D2)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: model.length,
                itemBuilder: (BuildContext context, int index) {
                  final bool isSelected = selectedIdx == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIdx = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: UseContainer(
                        image: model[index].image,
                        text: model[index].title,
                        colors: isSelected
                            ? const Color(0xffFE5CAD)
                            : const Color(0xffF8F8F8),
                        textcolor: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Cake",
                    style: GoogleFonts.inter(
                        fontSize: 20.sp, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PopularCakeScreen()));
                    },
                    child: Text(
                      "See More",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffD2D2D2)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen()));
                },
                child: const OrderCakeScreen()),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    ));
  }
}
