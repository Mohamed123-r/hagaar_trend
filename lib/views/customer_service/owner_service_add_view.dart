import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_service_item.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_top_service_card.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';
import '../profile/change_location.dart';
import 'customer_service_view.dart';

class OwnerServiceAddPropertyView extends StatefulWidget {
  const OwnerServiceAddPropertyView({super.key});

  @override
  State<OwnerServiceAddPropertyView> createState() =>
      _OwnerServiceAddPropertyViewState();
}

class _OwnerServiceAddPropertyViewState
    extends State<OwnerServiceAddPropertyView> {
  String showBody = "Main Body";

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar: customAppBar(context, title: "إضافة عقار", showBack: true),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              if (showBody == "Main Body")
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'تحديد قسم العقار',
                      style: AppTextStyles.style16W800(context),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "للبيع",
                        style: AppTextStyles.style14W400(
                          context,
                        ).copyWith(color: AppColors.green),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 8,
                      children: [
                        OwnerTopServiceCard(
                          title: 'إيجار \nسنوي',
                          showImage: false,
                        ),
                        OwnerTopServiceCard(
                          title: 'إيجار \nشهري',
                          showImage: false,
                        ),
                        OwnerTopServiceCard(
                          title: 'إيجار \nيومي',
                          showImage: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const DropdownField(hint: 'تحديد نوع العقار'),
                    const SizedBox(height: 12),
                    const DropdownField(hint: 'تحديد اتجاه العقار'),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "تحديد موقع العقار",
                            style: AppTextStyles.style14W400(
                              context,
                            ).copyWith(color: AppColors.grey),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ChangeLocation(),
                                ),
                              );
                            },
                            child: Text(
                              "تغيير الموقع",
                              style: AppTextStyles.style14W400(
                                context,
                              ).copyWith(
                                color: AppColors.green,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              else if (showBody == "Second Body")
                Column(
                  children: [
                    AppInputTextFormField(labelText: "إضافة عنوان للعقار"),

                    AppInputTextFormField(
                      maxLines: 5,
                      labelText: "إضافة وصف للعقار",
                    ),
                    SizedBox(height: 16),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: AppColors.border),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "إضافة صور للعقار",
                              style: AppTextStyles.style14W400(
                                context,
                              ).copyWith(color: AppColors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              Assets.imagesOwnerServiceAdd,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              else
                Column(
                  children: [
                    AppInputTextFormField(
                      labelText: "تحديد سعر العقار ( ريال )",
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppInputTextFormField(
                            labelText: "السعر قابل للتفاوض",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: AppInputTextFormField(
                            labelText: "السعر غير قابل للتفاوض",
                          ),
                        ),
                      ],
                    ),
                    AppInputTextFormField(
                      labelText: "تحديد مساحة العقار ( m2 )",
                    ),

                    SizedBox(height: 16),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: AppColors.border),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              spacing: 12,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "إضافة مميزات إضافية للعقار للعقار",
                                  style: AppTextStyles.style14W400(
                                    context,
                                  ).copyWith(color: AppColors.grey),
                                ),

                                Container(
                                  height: 32,
                                  width: 120,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xffEEEEEE),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                            size: 14,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          "تحديد موقعك",
                                          style: AppTextStyles.style12W400(
                                            context,
                                          ).copyWith(color: AppColors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              Assets.imagesOwnerServiceAdd,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: AppColors.border),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "إضافة نموذج عقد إلكتروني",
                              style: AppTextStyles.style14W400(
                                context,
                              ).copyWith(color: AppColors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              Assets.imagesOwnerServiceAdd,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              Expanded(child: const SizedBox(height: 12)),
              MaterialButton(
                height: 44,
                minWidth: 100,
                padding: EdgeInsets.zero,
                color: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                onPressed: () {
                  showBody == "Main Body"
                      ? showBody = "Second Body"
                      : showBody = "Final Body";

                  if (showBody == "Final Body") {
                    showDialog(
                      context: context,
                      builder:
                          (context) => AppAlertDialog2(
                            title: "تم إنشاء طلبك بنجاح سيتم التواصل معك قريبت",
                            onPressedOk: () {},
                          ),
                    );
                  }
                  setState(() {});
                },
                child: Text(
                  showBody == "Final Body" ? "إتمام العقار" : "التالي",
                  style: AppTextStyles.style12W700(
                    context,
                  ).copyWith(color: AppColors.white),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownField extends StatelessWidget {
  final String hint;

  const DropdownField({required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          borderRadius: BorderRadius.circular(12),
          value: null,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.grey,
          ),
          dropdownColor: AppColors.white,
          hint: Text(
            hint,
            style: AppTextStyles.style14W400(
              context,
            ).copyWith(color: AppColors.grey),
          ),
          items: [
            DropdownMenuItem(
              alignment:
                  direction == TextDirection.rtl
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
              value: 'Option 1',
              child: Text('Option 1'),
            ),
            DropdownMenuItem(
              alignment:
                  direction == TextDirection.rtl
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            DropdownMenuItem(
              alignment:
                  direction == TextDirection.rtl
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
              value: 'Option 3',
              child: Text('Option 3'),
            ),
          ],
          onChanged: (_) {},
        ),
      ),
    );
  }
}
