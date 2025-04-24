import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/custom_app_bar.dart';


class AgreementView extends StatelessWidget {
  final List<String> items = [
    'شقة',
    'دور سكني',
    'فيلا',
    'عمائر',
    'أراضي',
    'مجمع سكني',
    'صالات عرض',
    'مكاتب',
    'سكن عمال',
    'مستودعات',
    'معارض',
    'مصانع',
    'مزارع',
    'شاليهات',
    'استراحات',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(

        appBar: customAppBar(context, title: "الإتفاقات", showBack: true),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3 / 3.5,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return Card(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                    color: AppColors.border,
                  )
                ),
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(items[index],
                          style: AppTextStyles.style12W400(context)),
                      const SizedBox(height: 16),
                       Text("1132 ريال",
                          style: AppTextStyles.style14W700(context).copyWith(
                            color: AppColors.green
                          )),
                      const SizedBox(height: 4),
                       Text("لكل وحدة",
                          style: AppTextStyles.style10W400(context).copyWith(
                              color: AppColors.grey
                          )),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
