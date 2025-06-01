import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/notification/notification_details_view.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';

class NotificationView extends StatelessWidget {
  NotificationView({super.key});

  final List<String> registrations = List.generate(
    12,
    (index) => "تم التسجيل لحسابكم في يوم 24 / 3 / 2025 ...",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
          MediaQuery.of(context).size.width > 800
              ? customWibAppBar(context)
              : customAppBar(context, title: "إشعارات", showBack: false),
      body: ListView.separated(
        itemCount: registrations.length,
        separatorBuilder: (context, index) => Divider(color: Colors.grey[300]),
        itemBuilder: (context, index) {
          return Padding(
            padding:
                index == registrations.length - 1
                    ? const EdgeInsets.only(bottom: 90)
                    : EdgeInsets.zero,
            child: InkWell(
              onTap: () {
                MediaQuery.of(context).size.width > 800
                    ? showDialog(
                      context: context,
                      builder:
                          (context) => AppShowAlertDialog(
                            body: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                NotificationBubble(
                                  date: "24 / 3 / 2025",
                                  message:
                                      "مرحباً بك في تطبيق زد العقار\nيمكنك إيجاد عقارك المطلوب ببحث منظم ودقيق معنا في زد العقارات",
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                    )
                    : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationDetailsView(),
                      ),
                    );
              },

              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: AppColors.white,
                    border: Border.all(color: AppColors.border, width: 1),
                  ),
                  child: Image.asset(Assets.imagesLogo),
                ),
                title: Text(
                  "تطبيق زد العقار",
                  style: AppTextStyles.style12W400(context),
                ),
                subtitle: Text(
                  registrations[index],
                  style: AppTextStyles.style12W400(
                    context,
                  ).copyWith(color: AppColors.grey),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
