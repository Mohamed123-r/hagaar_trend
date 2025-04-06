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
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, title: "خدمة العملاء", showBack: false),
      body: Stack(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    SizedBox(height: 140),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "مرحبا بك",
                          style: AppTextStyles.style18W800(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                        SizedBox(width: 8),
                        Image.asset(Assets.imagesHand, width: 32, height: 32),
                      ],
                    ),
                    Text(
                      "كيف نقدر نساعدك ؟!",
                      style: AppTextStyles.style18W800(
                        context,
                      ).copyWith(color: AppColors.green),
                    ),
                    SizedBox(height: 12),
                    AppInputTextFormField(
                      maxLines: 5,
                      labelText: "أدخل الشكوي",
                    ),
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
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(Assets.imagesShapes2),
                  Image.asset(Assets.imagesShap1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
