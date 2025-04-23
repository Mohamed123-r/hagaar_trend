import 'package:flutter/material.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';

class OwnerServiceItem extends StatelessWidget {
  final String title;
  final String? value;
  final VoidCallback? onTap;

  const OwnerServiceItem({super.key, required this.title, this.onTap, this.value});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.middleGreen),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: AppTextStyles.style14W400(
                  context,
                ).copyWith(color: AppColors.green),
              ),
            ),
            Text(
              value ??"",
              style: AppTextStyles.style14W400(
                context,
              )
            ),
            SizedBox(width: 12,),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.green,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}