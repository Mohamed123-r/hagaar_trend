import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import '../generated/assets.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Container(
        color: Color(0xffF2F1ED),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    Image.asset(Assets.imagesFooterLogo, height: 160),
                    Text(
                      'معك في كل خطوة نحو عقارك الامن',
                      style: AppTextStyles.style18W400(context),
                    ),
                    Row(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {},
                          child: Image.asset(
                            Assets.imagesFooterButtonIOSpng,
                            height: 44,
                          ),
                        ),
                        SizedBox(width: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {},
                          child: Image.asset(
                            Assets.imagesFooterButtonAndroid,
                            height: 44,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      'روابط الوصول السريع',
                      style: AppTextStyles.style20W400(
                        context,
                      ).copyWith(color: AppColors.green),
                    ),
                    SizedBox(height: 8),
                    Text('الرئيسية', style: AppTextStyles.style18W400(context)),
                    Text('حسابي', style: AppTextStyles.style18W400(context)),
                    Text('المفضلة', style: AppTextStyles.style18W400(context)),
                    Text(
                      'الإشعارات',
                      style: AppTextStyles.style18W400(context),
                    ),
                    Text('الخدمات', style: AppTextStyles.style18W400(context)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      'خيارات البحث',
                      style: AppTextStyles.style20W400(
                        context,
                      ).copyWith(color: AppColors.green),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'فلل وقصور',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'دور  سكني',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'شقة',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'مجمع سكني',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'أراضي',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'عمائر',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'سكن عمال',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'مزارع',
                              style: AppTextStyles.style18W400(context),
                            ),
                          ],
                        ),
                        SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'مكاتب',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'صالات عرض',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'محلات',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'معارض',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'مستودعات',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'استراحات',
                              style: AppTextStyles.style18W400(context),
                            ),
                            Text(
                              'شاليهات',
                              style: AppTextStyles.style18W400(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("تواصل معنا", style: AppTextStyles.style20W400(context)),

                Row(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(Assets.imagesFacebook1, width: 24, height: 24),
                    Container(width: 1, height: 24, color: AppColors.green),
                    Image.asset(Assets.imagesFacebook2, width: 24, height: 24),
                    Container(width: 1, height: 24, color: AppColors.green),
                    Image.asset(Assets.imagesFacebook3, width: 24, height: 24),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 1,
              height: 32,
              endIndent: 44,
              indent: 44,
              color: AppColors.border,
            ),

            Text(
              "@ All rights saved for Doom Mind Website",
              style: AppTextStyles.style20W400(context),
            ),
          ],
        ),
      ),
    );
  }
}
