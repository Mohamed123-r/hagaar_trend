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

class NewAuthView extends StatelessWidget {
  const NewAuthView({super.key});

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
            Expanded(
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
                      Row(
                        children: [
                          Expanded(
                            child: AppInputTextFormField(
                              labelText: "الاسم الأول",
                            ),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: AppInputTextFormField(
                              labelText: "الاسم الثاني",
                            ),
                          ),
                        ],
                      ),
                      AppInputTextFormField(
                        labelText: "رقم الهاتف",
                        suffixIcon: Icon(Icons.phone_outlined, size: 20),
                      ),

                      AppPassInputTextFormField(labelText: "كلمة المرور"),
                      AppPassInputTextFormField(labelText: "تأكيد كلمة المرور"),
                      AppInputTextFormField(
                        labelText: "موقعك",
                        suffixIcon: SizedBox(
                          width: 100,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ChangeLocation(),
                                  ),
                                );
                              },
                              child: Text(
                                "تغير الموقع",
                                style: AppTextStyles.style12W400(
                                  context,
                                ).copyWith(
                                  color: AppColors.green,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      AppInputTextFormField(
                        labelText: "عضويتك",
                        suffixIcon: SizedBox(
                          width: 100,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder:
                                      (context) => AppAlertDialog(
                                        body: Column(
                                          children: [
                                            Text(
                                              'حدد نوع عقارك',
                                              style: AppTextStyles.style12W400(
                                                context,
                                              ).copyWith(
                                                color: AppColors.green,
                                              ),
                                            ),
                                            const SizedBox(height: 16),

                                            Wrap(
                                              spacing: 16,
                                              runSpacing: 16,
                                              alignment: WrapAlignment.center,
                                              children: [
                                                _membershipItem(
                                                  context: context,
                                                  Assets.imagesMembership1,
                                                  "باحث عن عقار",
                                                ),
                                                _membershipItem(
                                                  context: context,
                                                  Assets.imagesMembership2,
                                                  "مالك",
                                                ),
                                                _membershipItem(
                                                  context: context,
                                                  Assets.imagesMembership3,
                                                  "مسوق",
                                                ),
                                                _membershipItem(
                                                  context: context,
                                                  Assets.imagesMembership4,
                                                  "شركة عقارية",
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        onPressedOk: () {
                                          Navigator.pop(context);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ConfirmAuth(),
                                            ),
                                          );
                                        },
                                      ),
                                );
                              },
                              child: Text(
                                "تغير العضوية",
                                style: AppTextStyles.style12W400(
                                  context,
                                ).copyWith(
                                  color: AppColors.green,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
                      MaterialButton(
                        height: 44,
                        minWidth: double.infinity,
                        padding: EdgeInsets.zero,
                        color: AppColors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        onPressed: () {},
                        child: Text(
                          "إنشاء الحساب",
                          style: AppTextStyles.style12W700(
                            context,
                          ).copyWith(color: AppColors.white),
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        "تسجيل الدخول",
                        style: AppTextStyles.style16W400(context),
                      ),
                      SizedBox(height: 16),
                      MaterialButton(
                        height: 44,
                        minWidth: double.infinity,
                        padding: EdgeInsets.zero,
                        color: AppColors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        onPressed: () {},
                        child: Text(
                          "تسجيل الدخول",
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
          ],
        ),
      ),
    );
  }
}

Container _membershipItem(
  String img,
  String title, {
  required BuildContext context,
}) {
  return Container(
    width: 120,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      border: Border.all(color: AppColors.border),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img, width: 32),
        SizedBox(height: 16),
        Text(title, style: AppTextStyles.style12W400(context)),
      ],
    ),
  );
}
