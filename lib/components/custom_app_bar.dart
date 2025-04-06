import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/generated/assets.dart';

import 'app_colors.dart';
import 'app_text_styles.dart' show AppTextStyles;

AppBar customAppBar(
  BuildContext context, {
  required String title,
  VoidCallback? onCleckBack,
  bool showBack = true,
}) {
  return AppBar(
    elevation: 0,
    leadingWidth: showBack ? 50 : 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.white,

    systemOverlayStyle: SystemUiOverlayStyle.dark,
    centerTitle: true,
    leading: Visibility(
      visible: showBack,
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap:
              onCleckBack ??
              () {
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
        ),
      ),
    ),
    title: Directionality(
      textDirection: direction,
      child: Text(
        title,
        style: AppTextStyles.style24W800(
          context,
        ).copyWith(color: AppColors.green),
      ),
    ),
  );
}
