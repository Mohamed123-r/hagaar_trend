import 'package:flutter/material.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/generated/assets.dart';

import 'app_colors.dart';
import 'app_text_styles.dart' show AppTextStyles;

AppBar customAppBar(
    BuildContext context, {
      required String title,
      VoidCallback? onCleckBack,
      bool showBack =false ,
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
              showBack  ==true ?    InkWell(
                borderRadius: BorderRadius.circular(80),
                onTap: onCleckBack ?? () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.middleGreen,
                  ),
                  child: GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.white,
                      size: 16,
                    ),
                  ),
                ),
              ) : SizedBox(),
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


AppBar customWibAppBar(
    BuildContext context, ) {
  return AppBar(
    leadingWidth: 0,
    elevation: 0,
    toolbarHeight: 100 ,
    backgroundColor: AppColors.white,
    surfaceTintColor: AppColors.white,
    title: Directionality(
      textDirection: direction,
      child: Row(
        children: [
          Image.asset(Assets.imagesShapes4,height: 105, ),
          Spacer(),
          Image.asset(Assets.imagesShapes5,height: 105, ),
        ],
      ),
    ),
  );
}