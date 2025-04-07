import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';

import '../../../constant.dart';
import '../../../generated/assets.dart';

class ListViewItemFromShowList extends StatelessWidget {
  const ListViewItemFromShowList({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.location,
    required this.type,
    required this.area,
    required this.status,
  });

  final String image;
  final String name;
  final String price;
  final String location;
  final String type;
  final String area;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        spacing: 8,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: AspectRatio(
                  aspectRatio: 2,
                  child: Image.network(image, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 8,
                right: direction == TextDirection.rtl ? 8 : null,
                left: direction == TextDirection.ltr ? 8 : null,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xffADADAD),
                  child: SvgPicture.asset(Assets.imagesTrash),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(name, style: AppTextStyles.style13W400(context)),
              Spacer(),
              Text(
                price,
                style: AppTextStyles.style13W400(
                  context,
                ).copyWith(color: AppColors.green),
              ),
            ],
          ),
          Row(
            spacing: 12,
            children: [
              Text(location, style: AppTextStyles.style13W400(context)),
              Spacer(),
              Row(
                spacing: 3,
                children: [
                  Text(type, style: AppTextStyles.style10W400(context)),
                  SvgPicture.asset(Assets.imagesHouse, width: 16, height: 16),
                ],
              ),
              Row(
                spacing: 3,
                children: [
                  Text(status, style: AppTextStyles.style10W400(context)),
                  SvgPicture.asset(
                    Assets.imagesChartPie,
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
              Row(
                spacing: 3,
                children: [
                  Text(area, style: AppTextStyles.style10W400(context)),
                  SvgPicture.asset(
                    Assets.imagesVectorTwo,
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
