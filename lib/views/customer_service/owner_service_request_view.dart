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

class OwnerServiceRequestView extends StatefulWidget {
  const OwnerServiceRequestView({super.key});

  @override
  State<OwnerServiceRequestView> createState() =>
      _OwnerServiceRequestPropertyView();
}

class _OwnerServiceRequestPropertyView extends State<OwnerServiceRequestView> {


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar: customAppBar(context, title: "طلب أرض", showBack: true),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تحديد نوع الأرض',
                    style: AppTextStyles.style16W800(context),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 8,
                    children: [
                      OwnerTopServiceCard(
                        title: 'أرض \nتجارية',
                        showImage: false,
                      ),
                      OwnerTopServiceCard(
                        title: 'أرض \nسكنية',
                        showImage: false,
                      ),
                      OwnerTopServiceCard(
                        title: 'أرض \nزراعية',
                        showImage: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
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
                  Row(
                    children: [
                      Expanded(
                        child: AppInputTextFormField(
                          labelText: "السعر الأدني",
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(child: AppInputTextFormField(
                        labelText: "السعر الأعلي",)),
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
                  showDialog(context: context, builder: (context) =>
                      AppAlertDialog2(
                          title: "تم إنشاء طلبك بنجاح سيتم التواصل معك قريبت",
                          onPressedOk: () {}),
                  );
                },
                child: Text(
                  "إتمام الطلب",
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
