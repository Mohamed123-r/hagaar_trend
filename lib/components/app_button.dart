import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  final String text;

  final VoidCallback onPressed;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? AppColors.greyDarker,
      minWidth: 120,
      height: 42,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(120),
      ),
      child: Text(
        text,
        style: AppTextStyles.style10W500(context).copyWith(
          color: AppColors.white,
          fontFamily: 'Noto Kufi Arabic',
        ),
      ),
    );
  }
}
