import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matcher/matcher.dart';

class FaqsExpentionTile extends StatefulWidget {
  String text;
   FaqsExpentionTile({super.key,required this.text});

  @override
  State<FaqsExpentionTile> createState() => _FaqsExpentionTileState();
}

class _FaqsExpentionTileState extends State<FaqsExpentionTile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: ExpansionTile(
          collapsedShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
          backgroundColor: const Color(0xffF8F8F8),
          collapsedBackgroundColor: Colors.grey.shade100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.w),
          ),
          collapsedIconColor: Colors.black,
          collapsedTextColor: Colors.black,
          iconColor: const Color(0xffD2D2D2),
          textColor: const Color(0xffD2D2D2),
          title:  Text(widget.text,
          ),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  children: [
                    Text(
                      " Lorem Ipsum is simply dummy text of the \n printing and typesetting industry."
                      " Lorem \n Ipsum has been the industry's standard \n dummy text ever since the 1500s, "
                      "when \n an unknown printer took a galley of type \n and scrambled it to make a type specimen \n book. "
                      "It has survived not only five \n centuries, but also the leap into electronic \n typesetting, "
                      "remaining essentially \n unchanged. \n \n ",
                      style: GoogleFonts.inter(color: const Color(0xffD2D2D2)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
