import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:settings/utils/colors.dart';

class GlobalTextfield extends StatelessWidget {
  const GlobalTextfield({
    super.key,
    required this.title,
    this.isNewPassword = false,
    this.isPhoneNumber = false,
  });
  final String title;
  final bool isNewPassword;
  final bool isPhoneNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: AppColors.slate800),
        ),
        SizedBox(height: 5.h),
        SizedBox(
          height: 50.h,
          width: 345.w,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: isNewPassword
                  ? Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset("assets/svg/lock_icon.svg"),
                    )
                  : (isPhoneNumber
                      ? Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset("assets/svg/phone_icon.svg"),
                        )
                      : const SizedBox()),
              prefixIconConstraints:
                  const BoxConstraints(minWidth: 20, minHeight: 0),
              suffixIcon: isNewPassword
                  ? Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset("assets/svg/vision_icon.svg"),
                    )
                  : const SizedBox(),
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 0, minWidth: 20),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.slate200),
              ),
              filled: false,
              fillColor: AppColors.slate50,
              hintText: isPhoneNumber ? "+998 (_ _) - _ _ _ - _ _ - __" : title,
              hintStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.slate600,
              ),
              alignLabelWithHint: false,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
