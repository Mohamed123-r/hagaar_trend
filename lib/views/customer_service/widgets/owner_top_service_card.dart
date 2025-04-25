import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';

class OwnerTopServiceCard extends StatelessWidget {
  final String title;
  final String? image;
  final bool? showImage;
  final VoidCallback? onTap;

  const OwnerTopServiceCard({
    super.key,
    required this.title,
    this.image,
    this.onTap,
    this.showImage = true,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 160,
          padding: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Visibility(
                visible: showImage!,
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                  child: Image.asset(image ?? "", width: 24, height: 24),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                title,
                style: AppTextStyles.style14W400(
                  context,
                ).copyWith(color: AppColors.green),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
