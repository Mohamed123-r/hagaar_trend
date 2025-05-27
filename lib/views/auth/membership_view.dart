import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/views/auth/confirm_auth.dart';
import 'package:hagaar_trend/views/auth/new_auth_owner_view1.dart';
import 'package:hagaar_trend/views/auth/new_auth_view.dart';

import '../../components/app_alert_dialog.dart';
import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import '../profile/change_location.dart';
import 'forget_password_view.dart';

class MembershipView extends StatelessWidget {
  const MembershipView({super.key});

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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SizedBox(height: 32),
                    Text(
                      "حدد نوع عضويتك",
                      style: AppTextStyles.style16W400(context),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 60),

                        Wrap(
                          spacing: 24,
                          runSpacing: 24,
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
                    SizedBox(height: 32),
                    MaterialButton(
                      height: 44,
                      padding: EdgeInsets.zero,
                      color: AppColors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(160),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return service == "customer"
                                  ? NewAuthView()
                                  : NewAuthOwnerView1();
                            },
                          ),
                        );
                      },
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
    width: 150,
    height: 130,
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
