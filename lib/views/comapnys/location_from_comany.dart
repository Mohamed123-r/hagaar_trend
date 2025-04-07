import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../generated/assets.dart';

class LocationFromComapny extends StatelessWidget {
  const LocationFromComapny({super.key});

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
                        "موقع الشركة",
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
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                    builder:
                        (context) => Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Directionality(
                            textDirection: direction,
                            child: Container(

                              padding: EdgeInsets.all(16),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment:
                                    direction == TextDirection.rtl
                                        ? Alignment.topRight
                                        : Alignment.topLeft,

                                    child: GestureDetector(
                                      onTap: () => Navigator.pop(context),

                                      child: const Icon(Icons.close),
                                    ),
                                  ),
                                  SizedBox(height: 16),

                                  Text(
                                    "الدولة",
                                    style: AppTextStyles.style14W700(context),
                                  ),
                                  SizedBox(height: 8),
                                  TextField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "المملكة العربية السعودية",
                                      hintStyle: AppTextStyles.style12W400(
                                        context,
                                      ),
                                      filled: true,
                                      fillColor: AppColors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: AppColors.border,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16),

                                  // المدينة
                                  Text(
                                    "المدينة",
                                    style: AppTextStyles.style14W700(context),
                                  ),
                                  SizedBox(height: 8),
                                  TextField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "الرياض",
                                      hintStyle: AppTextStyles.style12W400(
                                        context,
                                      ),
                                      filled: true,
                                      fillColor: AppColors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: AppColors.border,
                                        ),
                                      ),
                                    ),
                                  ),


                                  // الحي
                                  Text(
                                    "الحي",
                                    style: AppTextStyles.style14W700(context),
                                  ),
                                  SizedBox(height: 8),
                                  TextField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "حي الشرفه",
                                      hintStyle: AppTextStyles.style12W400(
                                        context,
                                      ),
                                      filled: true,
                                      fillColor: AppColors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: AppColors.border,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    "المنطقة ",
                                    style: AppTextStyles.style14W700(context),
                                  ),
                                  SizedBox(height: 8),
                                  TextField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "منطقة الراض",
                                      hintStyle: AppTextStyles.style12W400(
                                        context,
                                      ),
                                      filled: true,
                                      fillColor: AppColors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: AppColors.border,
                                        ),
                                      ),
                                    ),
                                  ),


                                  SizedBox(height: 12),
                                ],
                              ),
                            ),
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
