import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settings/utils/colors.dart';

class ActiveDevices extends StatelessWidget {
  const ActiveDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20.h),
          child: Row(
            children: [
              Image.asset(
                "assets/images/pc_icon.jpg",
                width: 44,
                height: 44.h,
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Windows 11 - Google Chrome",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.slate800),
                  ),
                  Text(
                    "192.168.95.36",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: AppColors.slate600),
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/pc_icon.jpg",
              width: 44,
              height: 44.h,
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Windows 10 - Mozilla Firefox",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: AppColors.slate800),
                ),
                Text(
                  "186.369.36.256",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColors.slate600),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 30.h),
          child: Row(
            children: [
              Image.asset(
                "assets/images/mobile_icon.jpg",
                width: 44,
                height: 44.h,
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "IOS 17 - Mobile App",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.slate800),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "186.369.36.25",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
                            color: AppColors.slate600),
                        children: [
                          TextSpan(
                            text: " Это устройство",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18.sp,
                                color: AppColors.green600),
                          ),
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
