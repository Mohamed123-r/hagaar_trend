import 'package:flutter/material.dart';

import '../../../components/app_text_styles.dart';

class EditDataButton extends StatelessWidget {
  const EditDataButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.isDisabled = false,
  });

  final String title;
  final bool isDisabled;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: 52,
      minWidth: double.infinity,
      color: Color(0xFFEEEEEE),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            title,
            style:
                isDisabled
                    ? AppTextStyles.style14W700(
                      context,
                    ).copyWith(color: Color(0xFFD95440))
                    : AppTextStyles.style14W400(context),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
