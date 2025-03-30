import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../generated/assets.dart';

class ChangeLocation extends StatelessWidget {
  const ChangeLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              Assets.imagesTest3,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            Positioned(
              top: 56,

              child: Container(
                height: 48,
                width: 230,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close, color: Colors.red, size: 18),
                      ),
                      Spacer(),
                      Text(
                        "تحديد موقعك",
                        style: AppTextStyles.style16W400(context),
                      ),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: MaterialButton(
                height: 44,
                minWidth: 100,
                padding: EdgeInsets.zero,
                color: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                    builder:
                        (context) => Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment:
                                    direction == TextDirection.rtl
                                        ? Alignment.topRight
                                        : Alignment.topLeft,

                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(Icons.close),
                                ),
                              ),
                              SizedBox(height: 16),

                              Text(
                                "",
                                style: AppTextStyles.style14W700(context),
                              ),
                              SizedBox(height: 12),

                              MaterialButton(
                                height: 44,
                                minWidth: 100,
                                padding: EdgeInsets.zero,
                                color: AppColors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "موافق",
                                  style: AppTextStyles.style12W700(
                                    context,
                                  ).copyWith(color: AppColors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                  );
                },
                child: Text(
                  "موافق",
                  style: AppTextStyles.style12W700(
                    context,
                  ).copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
