import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart' show AppTextStyles;

AppBar customAppBar(BuildContext context) {
  return AppBar(
    leadingWidth: 0,
    leading: SizedBox(),
    elevation: 0,
    backgroundColor: AppColors.white,
    surfaceTintColor: AppColors.white,
    title: Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        spacing: 8,
        children: [
          Container(
            height: 48,
            padding: EdgeInsets.only(right: 2, left: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 1,
                color: AppColors.greenWhite,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Container(
                //   width: 44,
                //   height: 44,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //   ),
                //   child: Image.asset(Assets.imagesTest1),
                // ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "مرحبا",
                      style: AppTextStyles.style10W500(context).copyWith(
                        color: AppColors.greenWhite,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text("محمد علي عبد القادر",
                        style: AppTextStyles.style10W500(context)),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF9F9F9),
            ),
            child: Center(
                child: Text(
              "AR",
              style: AppTextStyles.style10W500(context),
            )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF9F9F9),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
