import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_service_item.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_top_service_card.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import 'customer_service_view.dart';

class OwnerServiceView extends StatelessWidget {
  const OwnerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: "خدمات مالك العقار",
        showBack: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerServiceView(
                        isSendComplaints: true,
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.middleGreen),
                  ),
                  child: Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.imagesHeadset,
                        width: 18,
                        height: 18,
                        color: AppColors.green,
                      ),
                      Text(
                        "أكتب لنا شكوتك",
                        style: AppTextStyles.style14W400(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OwnerTopServiceCard(
                    title: 'إضافة عقار',
                    image: Assets.imagesOwnerServiceAdd,
                  ),
                  OwnerTopServiceCard(
                    title: 'طلب شراء أرض',
                    image: Assets.imagesOwnerServiceRecust,
                  ),
                  OwnerTopServiceCard(
                    title: 'متابعة عقاراتي',
                    image: Assets.imagesOwnerServiceFollow,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text("خدماتي :", style: AppTextStyles.style16W800(context)),
              const SizedBox(height: 16),
              const OwnerServiceItem(title: 'طلبات الشراء'),
              const SizedBox(height: 12),
              const OwnerServiceItem(title: 'عقد إلكتروني'),
              const SizedBox(height: 12),
              OwnerServiceItem(title: 'إستفسارات العملاء', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
