import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalOutlinedButton extends StatelessWidget {
  const GlobalOutlinedButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
  });
  final Color buttonColor;
  final String buttonText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: SizedBox(
        height: 50.h,
        width: 345.w,
        child: OutlinedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(buttonColor),
          ),
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w500, fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
