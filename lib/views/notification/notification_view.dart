import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/notification/notification_details_view.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';

class NotificationView extends StatelessWidget {
  NotificationView({super.key});

  final List<String> registrations = List.generate(
    4,
    (index) => "تم التسجيل لحسابكم في يوم 24 / 3 / 2025 ...",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "إشعارات",showBack: false),
      body: ListView.separated(
        itemCount: registrations.length,
        separatorBuilder: (context, index) => Divider(color: Colors.grey[300]),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationDetailsView(),
                ),
              );
            },

            child: ListTile(
              leading:Container(
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
                style: AppTextStyles.style12W400(context).copyWith(
                  color: AppColors.grey
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
