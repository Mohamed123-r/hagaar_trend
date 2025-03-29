import 'package:flutter/material.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../generated/assets.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.imagesShap2),
                    Image.asset(Assets.imagesShap1),
                  ],
                ),
                Positioned(
                  top: 32,
                  right: direction == TextDirection.rtl ? 16 : null,
                  left: direction == TextDirection.ltr ? 16 : null,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(80),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: AppColors.white,
                        border: Border.all(color: AppColors.border, width: 1),
                      ),
                      child: GestureDetector(
                        child: Icon(Icons.arrow_back_ios_new, size: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                spacing: 24,
                children: [
                  PasswordTextForm(title: 'كلمة المرور الحالية',),
                  PasswordTextForm(title: 'كلمة المرور الجديدة',),
                  PasswordTextForm(title: 'تأكيد كلمة المرور الجديدة',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordTextForm extends StatelessWidget {
  const PasswordTextForm({
    super.key, required this.title,
  });
final String title ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( title, style: AppTextStyles.style14W700(context)),
        SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
