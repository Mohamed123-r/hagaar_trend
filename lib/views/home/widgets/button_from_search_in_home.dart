import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';

class ButtonFromSearchInHome extends StatelessWidget {
  const ButtonFromSearchInHome({
    super.key,
    required this.isSelect,
    required this.onPressed,
    required this.title,
  });

  final bool isSelect;

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      minWidth: 120,
      color: isSelect ? AppColors.middleGreen : AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.style14W400(
          context,
        ).copyWith(color: isSelect ? AppColors.white : AppColors.black),
      ),
    );
  }
}
