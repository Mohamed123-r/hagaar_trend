import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/app_text_styles.dart';

class DataFromCompanyView extends StatelessWidget {
  const DataFromCompanyView({
    super.key,
    required this.title,
     this.value,
    this.isGreen = false,
    this.isColum = false, this.textButton,
  });

  final String title;
  final String? value;
  final TextButton? textButton;
  final bool isGreen;
  final bool isColum;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isColum == true ? 200 : 40,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: isColum == true ? 16 : 0,
      ),
      color: isGreen ? Color(0xFFF1F1F1) : Colors.white,
      child:
          isColum
              ? Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.style14W700(context)),

                  Text(value!, style: AppTextStyles.style12W400(context)),
                ],
              )
              : Row(
                spacing: 8,
                children: [
                  Text(title, style: AppTextStyles.style14W400(context)),
                  Spacer(),
                  textButton ??  Text(value!, style: AppTextStyles.style14W400(context)),
                ],
              ),
    );
  }
}
