import 'package:flutter/material.dart';

import '../constant.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({
    super.key,
    required this.body,
    required this.onPressedOk,
    this.showButton = true,
  });

  final Widget body;
  final Function() onPressedOk;
  final bool showButton;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Align(
          alignment:
              direction == TextDirection.rtl
                  ? Alignment.topRight
                  : Alignment.topLeft,

          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
        ),
        titlePadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            body,
            SizedBox(height: 16),
            showButton
                ? MaterialButton(
                  height: 44,
                  minWidth: 100,
                  padding: EdgeInsets.zero,
                  color: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  onPressed: onPressedOk,
                  child: Text(
                    "موافق",
                    style: AppTextStyles.style12W700(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class AppAlertDialog2 extends StatelessWidget {
  const AppAlertDialog2({
    super.key,
    required this.title,
    this.body,
    required this.onPressedOk,
    this.showButton = true,
  });

  final String title;
  final Widget? body;
  final Function() onPressedOk;
  final bool showButton;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titlePadding: EdgeInsets.zero,
        title: Align(
          alignment:
              direction == TextDirection.rtl
                  ? Alignment.topRight
                  : Alignment.topLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
        ),
        content: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width >= 800 ? 54 : 12.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style:
                    MediaQuery.of(context).size.width > 800
                        ? AppTextStyles.style20W400(context)
                        : AppTextStyles.style16W400(context),
              ),
              body ?? SizedBox(),
              SizedBox(height: 16),
              showButton
                  ? MaterialButton(
                    height: 44,
                    minWidth: 100,
                    padding: EdgeInsets.zero,
                    color: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    onPressed: onPressedOk,
                    child: Text(
                      "موافق",
                      style: AppTextStyles.style12W700(
                        context,
                      ).copyWith(color: AppColors.white),
                    ),
                  )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppShowAlertDialog extends StatelessWidget {
  const AppShowAlertDialog({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titlePadding: EdgeInsets.zero,
        title: Align(
          alignment:
              direction == TextDirection.rtl
                  ? Alignment.topRight
                  : Alignment.topLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
        ),
        content: body,
      ),
    );
  }
}
