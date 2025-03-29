import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';

class SwitchProfileButton extends StatelessWidget {
  const SwitchProfileButton({
    super.key,
    required this.title,
    required this.image,
    this.isBlack = true,
    required this.onPressed,
  });

  final String title;

  final String image;

  final bool isBlack;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      minWidth: 132,
      padding: EdgeInsets.zero,
      color: isBlack ? AppColors.black : AppColors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppTextStyles.style12W700(
              context,
            ).copyWith(color: AppColors.white),
          ),
          SizedBox(width: 12),
          SvgPicture.asset(image, width: 12),
        ],
      ),
    );
  }
}
