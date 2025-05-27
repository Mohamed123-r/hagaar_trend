import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';

class CustomerServiceView extends StatelessWidget {
  const CustomerServiceView({super.key, this.isSendComplaints = false});

  final bool isSendComplaints;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar:
            MediaQuery.of(context).size.width > 800
                ? customWibAppBar(context)
                : customAppBar(
                  context,
                  title: isSendComplaints ? "الشكاوي" : "خدمة العملاء",
                  showBack: isSendComplaints ? true : false,
                ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(height: 100),
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
                SizedBox(height: 56),
                Text(
                  "نرد عليك في خلال 24 ساعة !",
                  style: AppTextStyles.style14W400(
                    context,
                  ).copyWith(color: AppColors.green),
                ),
                SizedBox(
                  width:
                      MediaQuery.of(context).size.width > 800
                          ? 400
                          : MediaQuery.of(context).size.width - 48,
                  child: AppInputTextFormField(
                    maxLines: 5,
                    labelText: "أدخل الشكوي",
                  ),
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
    );
  }
}
