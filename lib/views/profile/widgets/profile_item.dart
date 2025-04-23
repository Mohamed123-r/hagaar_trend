import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/app_colors.dart';

import '../../../components/app_text_styles.dart';
import '../../../constant.dart';
import '../../../generated/assets.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.location,
    required this.type,
    required this.area,
    required this.status,
    required this.commission,
  });

  final String image;
  final String name;
  final String price;
  final String location;
  final String type;
  final String area;
  final String status;
  final String commission;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.white,
            border: Border.all(color: AppColors.border, width: 1),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: AppTextStyles.style13W400(context)),
                    Text(location, style: AppTextStyles.style13W400(context)),
                    SizedBox(),
                    Row(
                      spacing: 12,
                      children: [
                        Row(
                          spacing: 3,
                          children: [
                            SvgPicture.asset(
                              Assets.imagesHouse,
                              width: 16,
                              height: 16,
                            ),
                            Text(
                              type,
                              style: AppTextStyles.style10W400(context),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 3,
                          children: [
                            SvgPicture.asset(
                              Assets.imagesVectorTwo,
                              width: 16,
                              height: 16,
                            ),
                            Text(
                              area,
                              style: AppTextStyles.style10W400(context),
                            ),
                          ],
                        ),

                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [


                        Text(
                          "السعر :  ",
                          style: AppTextStyles.style13W400(context),
                        ),
                        Text(
                          price,
                          style: AppTextStyles.style13W400(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                      ],
                    ),
                    Row(
                      children: [


                        Text(
                          "العمولة :  ",
                          style: AppTextStyles.style13W400(context),
                        ),
                        Text(
                          commission,
                          style: AppTextStyles.style13W400(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(image, fit: BoxFit.cover),
                    ),
                  ),
                  // Positioned(
                  //   top: 8,
                  //   right: direction == TextDirection.ltr ? 8 : null,
                  //   left: direction == TextDirection.rtl ? 8 : null,
                  //   child: CircleAvatar(
                  //     radius: 15,
                  //     backgroundColor: AppColors.black,
                  //     child: SvgPicture.asset(Assets.imagesTrash),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
