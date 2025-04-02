import 'package:flutter/material.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/custom_app_bar.dart';
import '../../constant.dart';
import '../../generated/assets.dart';

class NotificationDetailsView extends StatelessWidget {
  const NotificationDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar: customAppBar(context, title: "تطبيق ترند العقار"),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            NotificationBubble(
              date: "24 / 3 / 2025",
              message:
                  "مرحباً بك في تطبيق زد العقار\nيمكنك إيجاد عقارك المطلوب ببحث منظم ودقيق معنا في زد العقارات",
            ),
            const SizedBox(height: 16),
            NotificationBubble(
              date: "24 / 3 / 2025",
              message:
                  "تم التسجيل لحسابكم في يوم 24 / 3 / 2025\nيرجى الإبلاغ في حال وجود أي مشكلة",
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationBubble extends StatelessWidget {
  final String date;
  final String message;

  const NotificationBubble({
    super.key,
    required this.date,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              date,
              style: AppTextStyles.style12W700(
                context,
              ).copyWith(color: AppColors.white),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.green[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: AppTextStyles.style14W400(context),
                textAlign:
                    direction == TextDirection.ltr
                        ? TextAlign.left
                        : TextAlign.right,
              ),
              const SizedBox(height: 16),
              Row(
                spacing: 12,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: AppColors.white,
                    ),
                    child: Image.asset(Assets.imagesLogo),
                  ),
                  Text(
                    "تطبيق زد العقار",
                    style: AppTextStyles.style12W700(
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
