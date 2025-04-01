import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';

class CustomerServiceView extends StatelessWidget {
  const CustomerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "خدمة العملاء"),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset(Assets.imagesCustomerService),
            AppInputTextFormField(maxLines: 5, labelText: "أدخل الشكوي"),
            SizedBox(height: 32),
            MaterialButton(
              height: 44,
              minWidth: 140,
              padding: EdgeInsets.zero,
              color: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              onPressed: () {},
              child: Text(
                "إرسال الشكوي",
                style: AppTextStyles.style12W700(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
