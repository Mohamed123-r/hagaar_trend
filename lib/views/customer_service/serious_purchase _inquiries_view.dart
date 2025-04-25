import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/app_alert_dialog.dart';
import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
import '../../components/app_text_styles.dart';
import 'inquiry_chat_view.dart';

class SeriousPurchaseInquiriesView extends StatelessWidget {
  SeriousPurchaseInquiriesView({super.key});

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
          title: "طلبات الشراء الجاد",
          showBack: true,
        ),
        body: ListView.separated(
          itemCount: registrations.length,
          separatorBuilder:
              (context, index) => Divider(color: Colors.grey[300]),
          itemBuilder: (context, index) {
            final item = registrations[index];
            return InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (_) => AppAlertDialog(
                        body: Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: AppColors.grey,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(500),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",
                                  width: 170,
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16, width: 500),
                            InfoTile(
                              label: "الإسم",
                              value: "محمد علي عبد القادر",
                            ),
                            SizedBox(height: 12),
                            InfoTile(
                              label: "رقم الهاتف",
                              value: "+20 0108363542892",
                            ),
                            SizedBox(height: 12),
                            InfoTile(label: "المدينة", value: "مكة المكرمة"),
                            SizedBox(height: 12),
                            InfoTile(label: "المنطقة", value: "الشارقة"),
                          ],
                        ),
                        onPressedOk: () {},
                      ),
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
            );
          },
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$label :", style: AppTextStyles.style12W400(context)),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.left,
              style: AppTextStyles.style12W400(context),
            ),
          ),
        ],
      ),
    );
  }
}
