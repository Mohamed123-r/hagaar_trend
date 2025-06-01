import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../components/app_alert_dialog.dart';
import '../../components/custom_app_bar.dart';
import '../home/item_details_view.dart';

class AdvanceRequestsDetailsView extends StatelessWidget {
  AdvanceRequestsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar: customAppBar(context, title: "طلبات السلفة", showBack: true),
        body: AdvanceRequestsDetailsBodyView(),
      ),
    );
  }
}

class AdvanceRequestsDetailsBodyView extends StatelessWidget {
  AdvanceRequestsDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            SizedBox(),
            CircleAvatar(
              radius: screenWidth > 800 ? 100 : 85,
              backgroundColor: AppColors.grey,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",
                  width: screenWidth > 800 ? 200 : 170,
                  height: screenWidth > 800 ? 200 : 170,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(),
            Text(
              "محمد علي عبد القادر",
              style: AppTextStyles.style16W800(context),
            ),

            Text(
              "+20 0109282735242",
              style: AppTextStyles.style12W400(context),
            ),

            AdvanceRequestsDetailsItem(
              screenWidth: screenWidth,
              title: 'المدينة',
              value: 'الراض',
            ),
            AdvanceRequestsDetailsItem(
              screenWidth: screenWidth,
              title: 'المنطقة',
              value: 'الشارقة',
            ),
            AdvanceRequestsDetailsItem(
              screenWidth: screenWidth,
              title: 'الحي',
              value: 'المشرق',
            ),
            AdvanceRequestsDetailsItem(
              screenWidth: screenWidth,
              title: 'البنك',
              value: 'بنك المملكة العربية',
            ),
            AdvanceRequestsDetailsItem(
              screenWidth: screenWidth,
              title: 'مبلغ السلفة',
              value: '13244 ريال',
            ),
            SizedBox(),
            MaterialButton(
              height: 44,
              minWidth: double.infinity,
              padding: EdgeInsets.zero,
              color: AppColors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (_) => ItemDetailsView(
                          showAdvanceRequests: false,
                          image:
                              "https://images.pexels.com/photos/7031400/pexels-photo-7031400.jpeg",

                          price: "1,200,000 ريال",
                          location: "الرياض، المملكة العربية السعودية",
                          name: "فيلا فاخرة للبيع",

                          commission: "5,000 ريال",
                        ),
                  ),
                );
              },
              child: Text(
                "عرض تفاصيل العقار",
                style: AppTextStyles.style12W700(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 44,
                    minWidth: double.infinity,
                    padding: EdgeInsets.zero,
                    color: AppColors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder:
                            (_) => AppAlertDialog2(
                              title:
                                  "تم قبول طلب السلفة سيتم التواصل معك قريبا",
                              onPressedOk: () {},
                            ),
                      );
                    },
                    child: Text(
                      "قبول طلب السلفة",
                      style: AppTextStyles.style12W700(
                        context,
                      ).copyWith(color: AppColors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: MaterialButton(
                    height: 44,
                    minWidth: double.infinity,
                    padding: EdgeInsets.zero,
                    color: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder:
                            (_) => AppAlertDialog2(
                              title: "تم رفض طلب السلفة",
                              onPressedOk: () {},
                            ),
                      );
                    },
                    child: Text(
                      "رفض طلب السلفة",
                      style: AppTextStyles.style12W700(
                        context,
                      ).copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class AdvanceRequestsDetailsItem extends StatelessWidget {
  const AdvanceRequestsDetailsItem({
    super.key,
    required this.screenWidth,
    required this.title,
    required this.value,
  });

  final double screenWidth;
  final String title;

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth > 800 ? 400 : screenWidth - 48,
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.style12W400(
              context,
            ).copyWith(color: AppColors.green),
          ),
          Text(
            value,
            style: AppTextStyles.style12W400(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
