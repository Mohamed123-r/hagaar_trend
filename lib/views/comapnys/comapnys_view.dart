import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/app_colors.dart';
import '../../components/custom_app_bar.dart';
import '../../generated/assets.dart';

class ComapnysView extends StatelessWidget {
  ComapnysView({super.key});

  final List<Map<String, String>> companies = [
    {
      'image': 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      'name': 'شركة الإشراق للعقارات',
      'location': 'مدينة الرياض - حي الشارقة',
      'phone': '+20 010928736354',
    },
    {
      'image': 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      'name': 'شركة الإشراق للعقارات',
      'location': 'مدينة الرياض - حي الشارقة',
      'phone': '+20 010928736354',
    },
    {
      'image': 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      'name': 'شركة الإشراق للعقارات',
      'location': 'مدينة الرياض - حي الشارقة',
      'phone': '+20 010928736354',
    },
    {
      'image': 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      'name': 'شركة الإشراق للعقارات',
      'location': 'مدينة الرياض - حي الشارقة',
      'phone': '+20 010928736354',
    },
    {
      'image': 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      'name': 'شركة الإشراق للعقارات',
      'location': 'مدينة الرياض - حي الشارقة',
      'phone': '+20 010928736354',
    },
    {
      'image': 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      'name': 'شركة الإشراق للعقارات',
      'location': 'مدينة الرياض - حي الشارقة',
      'phone': '+20 010928736354',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: customAppBar(context, title: "المكاتب العقارية"),
        body: Stack(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 16),
              itemCount: companies.length,

              itemBuilder: (context, index) {
                final company = companies[index];
                return Padding(
                  padding:
                      index == 0
                          ? const EdgeInsets.only(top: 70)
                          : index == companies.length - 1
                          ? const EdgeInsets.only(bottom: 100)
                          : EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                direction == TextDirection.ltr
                                    ? CrossAxisAlignment.end
                                    : CrossAxisAlignment.start,
                            children: [
                              Text(
                                company['name']!,
                                style: AppTextStyles.style12W400(context),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                company['location']!,
                                style: AppTextStyles.style12W400(context),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    direction == TextDirection.ltr
                                        ? MainAxisAlignment.end
                                        : MainAxisAlignment.start,
                                children: [
                                  Text(
                                    company['phone']!,
                                    style: AppTextStyles.style14W700(
                                      context,
                                    ).copyWith(color: Color(0xff29A71A)),
                                  ),
                                  const SizedBox(width: 6),
                                  SvgPicture.asset(
                                    Assets.imagesWhatsappLogo,
                                    color: Color(0xff29A71A),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: AppColors.green,
                              child: Image.network(
                                company['image']!,
                                width: 64,
                                height: 64,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Positioned(
              right: 0,
              left: 0,
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.imagesShapes2),
                    Image.asset(Assets.imagesShap1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
