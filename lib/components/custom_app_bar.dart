import 'package:flutter/material.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/generated/assets.dart';

import 'app_colors.dart';
import 'app_text_styles.dart' show AppTextStyles;

AppBar customAppBar(
  BuildContext context, {
  required String title,
  VoidCallback? onCleckBack,
}) {
  return AppBar(
    leadingWidth: 0,
    elevation: 0,
    backgroundColor: AppColors.black,
    surfaceTintColor: AppColors.black,
    title: Directionality(
      textDirection: direction,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -20,
            top: -20,
            child: Image.asset(Assets.imagesShapes, width: 100),
          ),
          Row(
            spacing: 16,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(80),
                onTap: onCleckBack ?? () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.white,
                  child: GestureDetector(
                    child: Icon(Icons.arrow_back_ios_new, size: 16),
                  ),
                ),
              ),
              Text(
                title,
                style: AppTextStyles.style20W400(
                  context,
                ).copyWith(color: AppColors.white),
              ),
              Spacer(),
              Image.asset(Assets.imagesLogo, height: 54, width: 64),
            ],
          ),
        ],
      ),
    ),
  );
}
