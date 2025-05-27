import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/views/auth/confirm_auth.dart';

import '../../components/app_alert_dialog.dart';
import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import '../profile/change_location.dart';
import 'forget_password_view.dart';

class NewAuthOwnerView2 extends StatelessWidget {
  const NewAuthOwnerView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: direction,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                MediaQuery.of(context).size.width > 800
                    ? Row(
                        children: [
                          Image.asset(Assets.imagesShapes4, height: 105),
                          Spacer(),
                          Image.asset(Assets.imagesShapes5, height: 105),
                        ],
                      )
                    :
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.imagesShap2),
                    Image.asset(Assets.imagesShap1),
                  ],
                ),
                Positioned(
                  top: 40,
                  right: direction == TextDirection.rtl ? 16 : null,
                  left: direction == TextDirection.ltr ? 16 : null,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.middleGreen,
                      ),
                      child: GestureDetector(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text(
                    "إنشاء حساب جديد",
                    style: AppTextStyles.style24W800(
                      context,
                    ).copyWith(color: AppColors.green),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width > 800
                  ? 530
                  : MediaQuery.of(context).size.width,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        SizedBox(height: 32),
                        Text(
                          "أدخل بياناتك لتبدء",
                          style: AppTextStyles.style16W400(context),
                        ),
                        AppInputTextFormField(
                          labelText: "رقم السجل التجاري",
                        ),
                        AppInputTextFormField(
                          labelText: "رقم رخصة فال",
                        ),

                        AppInputTextFormField(
                          labelText: "رقم رخصة نفاذ",
                        ),
                        AppPassInputTextFormField(labelText: "كلمة المرور"),
                        AppPassInputTextFormField(labelText: "تأكيد كلمة المرور"),

                        SizedBox(height: 32),
                        MaterialButton(
                          height: 44,
                          padding: EdgeInsets.zero,
                          color: AppColors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(160),
                          ),
                          onPressed: () {    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConfirmAuth(),
                            ),
                          );},
                          child: Text(
                            "التالي",
                            style: AppTextStyles.style12W700(
                              context,
                            ).copyWith(color: AppColors.white),
                          ),
                        ),
                        SizedBox(height: 32),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

