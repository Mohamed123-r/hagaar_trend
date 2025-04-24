import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import 'inquiry_chat_view.dart';

class InquiriesView extends StatelessWidget {
  InquiriesView({super.key});

  final List<Map<String, String>> registrations = List.generate(
    12,
    (index) => {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",

      "name": "محمد العتيبي",
      "address": "الرياض، المملكة العربية السعودية",
    },
  );

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: customAppBar(
          context,
          title: "إستفسارات العملاء",
          showBack: true,
        ),
        body: ListView.separated(
          itemCount: registrations.length,
          separatorBuilder:
              (context, index) => Divider(color: Colors.grey[300]),
          itemBuilder: (context, index) {
            final item = registrations[index];
            return Padding(
              padding:
                  index == registrations.length - 1
                      ? const EdgeInsets.only(bottom: 90)
                      : EdgeInsets.zero,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InquiryChatView()),
                  );
                },
                child: ListTile(
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: AppColors.white,
                      border: Border.all(color: AppColors.border, width: 1),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(item["image"]!, fit: BoxFit.cover),
                  ),
                  title: Text(
                    item["name"]!,
                    style: AppTextStyles.style12W400(context),
                  ),
                  subtitle: Text(
                    item["address"]!,
                    style: AppTextStyles.style12W400(
                      context,
                    ).copyWith(color: AppColors.grey),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
