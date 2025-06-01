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
                    Text(
                      "إنشاء طلب الشراء",
                      style: AppTextStyles.style14W700(context),
                    ),
                    buildTextField(hint: "أدخل إسمك الثلاثي"),
                    buildTextField(hint: "أدخل رقم هاتفك"),
                    buildTextField(hint: "المدينة"),
                    buildTextField(hint: "المنطقة"),
                    buildTextField(hint: "الحي"),
                  ],
                ),
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
                    "إنشاء الطلب",
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

class AskForRealEstateAlartDialog2 extends StatefulWidget {
  const AskForRealEstateAlartDialog2({
    super.key,
    required this.onPressedSearch,
    required this.onPressedSearch2,
  });

  final Function() onPressedSearch;
  final Function() onPressedSearch2;

  @override
  State<StatefulWidget> createState() {
    return _AskForRealEstateAlartDialogDialogState2();
  }
}

class _AskForRealEstateAlartDialogDialogState2
    extends State<AskForRealEstateAlartDialog2> {
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
                    Text(
                      "هل ترغب في إنشاء طلب سلفة ؟!",
                      style: AppTextStyles.style14W700(context),
                    ),
                    buildDropdown( hint: "حدد البنك", options:  [
                      "البنك الأهلي",
                      "البنك العربي",
                      "البنك السعودي الفرنسي",
                      "البنك الأول",
                      "البنك السعودي للاستثمار",
                    ]),
                    buildTextField(hint: "مقدار السلفة"),
                  ],
                ),
                SizedBox(width: 500),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      height: 44,
                      minWidth: 100,
                      color: AppColors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      onPressed: widget.onPressedSearch,
                      child: Text(
                        "طلب السلفة",
                        style: AppTextStyles.style12W700(
                          context,
                        ).copyWith(color: AppColors.white),
                      ),
                    ),
                    MaterialButton(
                      height: 44,
                      minWidth: 100,
                      color: AppColors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      onPressed: widget.onPressedSearch2,
                      child: Text(
                        "تخطي",
                        style: AppTextStyles.style12W700(
                          context,
                        ).copyWith(color: AppColors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDropdown({
    required String hint,
    String? label,
    String? value,
    required List<String> options,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? "", style: AppTextStyles.style16W800(context)),
        SizedBox(height: 12),
        DropdownButtonFormField<String>(
          value: value,
          hint: Text(
            hint,
            style: AppTextStyles.style14W400(
              context,
            ).copyWith(color: AppColors.grey),
          ),
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
