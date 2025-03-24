import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/app_text_styles.dart';

class DataFromItemDetailsView extends StatelessWidget {
  const DataFromItemDetailsView({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    this.isGreen = false,
  });

  final String title;
  final String value;
  final String image;
  final bool isGreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: isGreen ? Color(0xFFF1F1F1) : Colors.white,
      child: Row(
        spacing: 8,
        children: [
          SvgPicture.asset(image, width: 16, height: 16),
          Text(title, style: AppTextStyles.style12W400(context)),
          Spacer(),
          Text(value, style: AppTextStyles.style12W400(context)),
        ],
      ),
    );
  }
}
