import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/notification-row.dart';
import 'notification-details.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationDetails()));
                  },
                  child: Text(
                    "Notifications",
                    style: GoogleFonts.inter(
                        fontSize: 25.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            NotificationRow(
              text1: 'Transaction Success',
              text2: 'We have successfully received your payment ',
              text3: 'for the tale of albantara.',
              text4: '5 min ago.',
            ),
            SizedBox(
              height: 20.h,
            ),
            NotificationRow(
              text1: 'Payment Failed',
              text2: 'We cannot procceed your transaction now.',
              text3: ' please try again later.',
              text4: '10 min ago.',
            ),
            SizedBox(
              height: 20.h,
            ),
            NotificationRow(
              text1: 'Transaction Report',
              text2: 'You can see your transaction history in cuby ',
              text3: 'for the tale of albantara.',
              text4: '1 day ago',
            ),
            SizedBox(
              height: 20.h,
            ),
            NotificationRow(
              text1: 'Payment Failed',
              text2: 'We cannot procceed your transaction now.',
              text3: ' please try again later.',
              text4: 'Yesterday.',
            ),
            SizedBox(
              height: 20.h,
            ),
            NotificationRow(
              text1: 'Transaction Report',
              text2: 'You can see your transaction history in cuby ',
              text3: 'for the tale of albantara.',
              text4: 'Yesterday',
            ),
          ],
        ),
      ),
    );
  }
}
