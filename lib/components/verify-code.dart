import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class VerifyPinPut extends StatefulWidget {

  const VerifyPinPut({super.key});

  @override
  State<VerifyPinPut> createState() => _VerifyPinPutState();
}

class _VerifyPinPutState extends State<VerifyPinPut> {
  late var defaultPinTheme;
  late var focusedPinTheme;
  late var submittedPinTheme;


  @override
  void initState() {
    defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: TextStyle(
          fontSize: 20.sp,
          color: Color(0xffD2D2D2),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        // border: Border.all(color:  Color(0xffF9FAFB)),
          borderRadius: BorderRadius.circular(12),
          color:  Color(0xffF9FAFB)
      ),
    );

    focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color(0xffF8F8F8)),
      borderRadius: BorderRadius.circular(8),
    );

    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color:  Color(0xffF8F8F8),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }
}
