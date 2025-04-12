import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/app_text_styles.dart';
import '../../../generated/assets.dart';

class FeaturesFromItemDetailsView extends StatelessWidget {
  const FeaturesFromItemDetailsView({
    super.key,
    this.isGreen = false,
    required this.value1,

  });

  final String value1;

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
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              spacing: 8,
              children: [
                SvgPicture.asset(
                  Assets.imagesCheckCircle,
                  width: 16,
                  height: 16,
                ),
                Text(value1, style: AppTextStyles.style12W400(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
