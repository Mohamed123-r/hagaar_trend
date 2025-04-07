import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/constant.dart';

import '../../../components/app_colors.dart';
import 'button_from_search_in_home.dart';

class AskForRealEstateAlartDialog extends StatefulWidget {
  const AskForRealEstateAlartDialog({super.key, required this.onPressedSearch});

  final Function() onPressedSearch;

  @override
  State<StatefulWidget> createState() {
    return _AskForRealEstateAlartDialogDialogState();
  }
}

class _AskForRealEstateAlartDialogDialogState
    extends State<AskForRealEstateAlartDialog> {
  bool isSelect = true;

  String? selectedCity = 'الرياض';
  String? selectedCategory = 'للبيع';
  String? selectedType = 'شقة';
  String? selectedAge = 'أقل من 2 سنة';

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
            icon: Icon(Icons.close, size: 18),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        contentPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 12,
              children: [
                Column(
                  children: [
                    buildDropdown("المدينة", selectedCity, [
                      "الرياض",
                      "جدة",
                      "مكة",
                    ]),
                    buildDropdown("قسم العقار", selectedCategory, [
                      "للبيع",
                      "للايجار",
                    ]),
                    buildDropdown("نوع العقار", selectedType, [
                      "شقة",
                      "فيلا",
                      "أرض",
                    ]),
                    buildDropdown("عمر العقار", selectedAge, [
                      "أقل من 2 سنة",
                      "أقل من 5 سنوات",
                      "أكثر من 10 سنوات",
                    ]),

                    Row(
                      children: [
                        Expanded(
                          child: buildTextField(
                            hint: "السعر الأدنى",
                            label: 'السعر',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(child: buildTextField(hint: "السعر الأعلى")),
                      ],
                    ),
                    SizedBox(height: 8),

                    Row(
                      children: [
                        Expanded(
                          child: buildTextField(
                            hint: "أقل مساحة",
                            label: 'المساحة',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(child: buildTextField(hint: "أعلى مساحة")),
                      ],
                    ),
                  ],
                ),
                buildTextField(hint: "رقم الهاتف", label: 'رقم هاتف المعلن'),
                SizedBox(width: 500),
                MaterialButton(
                  height: 44,
                  minWidth: 100,
                  color: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  onPressed: widget.onPressedSearch,
                  child: Text(
                    "إنشاء طلب البحث",
                    style: AppTextStyles.style12W700(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDropdown(String label, String? value, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.style16W800(context)),
        SizedBox(height: 12),
        DropdownButtonFormField<String>(
          value: value,

          dropdownColor: AppColors.white,
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
          ),
          items:
              options
                  .map(
                    (item) => DropdownMenuItem(
                      alignment:
                          direction == TextDirection.rtl
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                      value: item,
                      child: Text(
                        item,
                        style: AppTextStyles.style14W400(context),
                      ),
                    ),
                  )
                  .toList(),
          onChanged: (newValue) {
            setState(() => value = newValue);
          },
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget buildTextField({required String hint, String? label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? "", style: AppTextStyles.style16W800(context)),
        SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.border, width: 1),
            ),
            hintText: hint,
            hintStyle: AppTextStyles.style14W400(
              context,
            ).copyWith(color: AppColors.grey),
          ),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
