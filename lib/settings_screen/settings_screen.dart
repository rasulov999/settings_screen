import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settings/utils/colors.dart';
import 'package:settings/widgets/active_devices.dart';
import 'package:settings/widgets/global_outlined_button.dart';
import 'package:settings/widgets/global_textfield.dart';
import 'package:settings/widgets/header_text.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.slate0,
      appBar: AppBar(
        title: const Text(
          "Изменит профиль",
          style: TextStyle(color: AppColors.slate800),
        ),
        leading: const Icon(
          Icons.arrow_back_outlined,
          weight: 24,
          color: AppColors.c_292D32,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Image.asset(
                "assets/images/profile_image.jpg",
                width: 120,
                height: 120,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h).r,
              child: const GlobalOutlinedButton(
                  buttonColor: AppColors.rose100,
                  buttonText: "Удалить фото",
                  textColor: AppColors.rose600),
            ),
            const GlobalOutlinedButton(
                buttonColor: AppColors.blue100,
                buttonText: "Изменить фото",
                textColor: AppColors.blue600),
            Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 30),
              child: const Divider(
                thickness: 1.5,
                color: AppColors.slate200,
              ),
            ),
            const HeaderText(
                title: "Основная информация",
                text:
                    "Основная информация о вас, имя, адрес электронной почты и номер телефона."),
            SizedBox(height: 20.h),
            const GlobalTextfield(title: "Ваше имя"),
            SizedBox(height: 14.h),
            const GlobalTextfield(title: "Ваше фамилия"),
            SizedBox(height: 14.h),
            const GlobalTextfield(title: "Почтовый адрес"),
            SizedBox(height: 14.h),
            const GlobalTextfield(title: "Номер телефона", isPhoneNumber: true,),
            Padding(
              padding: EdgeInsets.only(top: 24.h, bottom: 15.h),
              child: const GlobalOutlinedButton(
                  buttonColor: AppColors.blue600,
                  buttonText: "Сохранит изменения",
                  textColor: AppColors.slate0),
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.slate200,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: const HeaderText(
                  title: "Управления паролям",
                  text:
                      "Чтобы обеспечить безопасность своей учетной записи, используйте длинный случайный пароль."),
            ),
            const GlobalTextfield(title: "Старый пароль", isNewPassword: true,),
            SizedBox(height: 14.h),
            const GlobalTextfield(title: "Новый пароль", isNewPassword: true,),
            SizedBox(height: 24.h),
            const GlobalOutlinedButton(
                buttonColor: AppColors.blue600,
                buttonText: "Изменить пароль",
                textColor: AppColors.slate0),
            Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 20.h),
              child: const Divider(
                thickness: 1.5,
                color: AppColors.slate200,
              ),
            ),
            const HeaderText(
                title: "Активные сессии",
                text:
                    "Управляйте активными сеансами и выходите из них в других браузерах и устройствах."),
            const ActiveDevices(),
            const GlobalOutlinedButton(
                buttonColor: AppColors.rose100,
                buttonText: "Остановить другие сеансы",
                textColor: AppColors.rose600),
            SizedBox(height: 30.h)
          ],
        ),
      ),
    );
  }
}
