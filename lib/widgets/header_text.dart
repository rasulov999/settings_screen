import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settings/utils/colors.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.slate800),
        ),
        Text(
          text,
          style: const  TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.slate600),
        ),
      ],
    );
  }
}
