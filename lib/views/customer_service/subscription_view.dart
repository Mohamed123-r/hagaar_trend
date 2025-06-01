import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../components/custom_app_bar.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar: customAppBar(context, title: "الإشتراكات", showBack: true),
        body: SubscriptionBodyView(),
      ),
    );
  }
}

class SubscriptionBodyView extends StatelessWidget {
  const SubscriptionBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return           service == 'banker' ? Column(
      children: [
        SizedBox(height: 24),
        Text(
          "الإشتراك الخاص بك",
          style: AppTextStyles.style20W400(context),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Color(0xffC3E5CF),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    radius: 35,
                    percent: 0.77,
                    progressColor: Colors.green,
                    center: const Text("77%"),
                  ),
                  Column(
                    children: [
                      Text(
                        "المتبقي",
                        style: AppTextStyles.style12W700(context),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "21 يوم",
                        style: AppTextStyles.style14W700(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "المدة",
                        style: AppTextStyles.style12W700(context),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "30 يوم",
                        style: AppTextStyles.style14W700(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "السعر",
                        style: AppTextStyles.style12W700(context),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "1132 ريال",
                        style: AppTextStyles.style14W700(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 56),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    height: 40,
                    padding: EdgeInsets.zero,
                    color: AppColors.middleGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "تجديد  إشتراك",
                          style: AppTextStyles.style12W700(
                            context,
                          ).copyWith(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "34 طلب سلفة",
                    style: AppTextStyles.style16W400(
                      context,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    ): Column(
      children: [
        SizedBox(height: 24),
        Text(
          "الإشتراك الخاص بك",
          style: AppTextStyles.style20W400(context),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Color(0xffC3E5CF),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    radius: 35,
                    percent: 0.77,
                    progressColor: Colors.green,
                    center: const Text("77%"),
                  ),
                  Column(
                    children: [
                      Text(
                        "المتبقي",
                        style: AppTextStyles.style12W700(context),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "21 يوم",
                        style: AppTextStyles.style14W700(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "المدة",
                        style: AppTextStyles.style12W700(context),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "30 يوم",
                        style: AppTextStyles.style14W700(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "السعر",
                        style: AppTextStyles.style12W700(context),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "1132 ريال",
                        style: AppTextStyles.style14W700(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 24),
        Text("تفاصيل الباقة", style: AppTextStyles.style20W400(context)),
        const SizedBox(height: 12),
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "232 ريال سعودي",
                    style: AppTextStyles.style16W400(
                      context,
                    ).copyWith(color: AppColors.green),
                  ),
                  Text(
                    "Standard",
                    style: AppTextStyles.style20W400(
                      context,
                    ).copyWith(color: AppColors.green),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                "•  خصائص بحث متقدمة",
                style: AppTextStyles.style14W400(
                  context,
                ).copyWith(color: AppColors.grey),
              ),
              Text(
                "•  إنشاء جميع أنواع العقارات",
                style: AppTextStyles.style14W400(
                  context,
                ).copyWith(color: AppColors.grey),
              ),
              Text(
                "•  التنبيهات والإشعارات",
                style: AppTextStyles.style14W400(
                  context,
                ).copyWith(color: AppColors.grey),
              ),
              Text(
                "•  الأولوية في دعم العملاء",
                style: AppTextStyles.style14W400(
                  context,
                ).copyWith(color: AppColors.grey),
              ),
              Text(
                "•  مزايا التفاوض المحفوظة",
                style: AppTextStyles.style14W400(
                  context,
                ).copyWith(color: AppColors.grey),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    height: 40,
                    padding: EdgeInsets.zero,
                    color: AppColors.middleGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "تجديد  إشتراك",
                          style: AppTextStyles.style12W700(
                            context,
                          ).copyWith(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "30 يوم",
                    style: AppTextStyles.style16W400(
                      context,
                    ).copyWith(color: AppColors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
