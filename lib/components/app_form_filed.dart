import 'package:flutter/material.dart';
import 'package:hagaar_trend/constant.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppInputTextFormField extends StatelessWidget {
  const AppInputTextFormField({
    super.key,
     this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.obscureText,
    this.validator,
    this.keyboardType,
    this.controller,  this.title, this.maxLines =1,
  });

  final String? labelText;
  final String? title;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String?)? onChanged;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title ?? "", style: AppTextStyles.style14W700(context)),
          SizedBox(height: 12),
          TextFormField(
            maxLines:maxLines ,
            controller: controller,
            obscureText: obscureText ?? false,
            keyboardType: keyboardType ?? TextInputType.text,
            onChanged: onChanged,
            validator: validator,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              filled: true,
              fillColor: AppColors.white,
              label:
                  labelText != null ? Text(labelText!, style: AppTextStyles.style12W400(
                      context).copyWith(
                    color: AppColors.grey
                  )) : null,
              prefixIcon: prefixIcon,
              prefixIconColor: AppColors.border,
              suffixIcon: suffixIcon,
              suffixIconColor: AppColors.border,
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              disabledBorder: buildOutlineInputBorder(),
              errorBorder: buildOutlineInputBorder(),
              border: buildOutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(width: 1, color: AppColors.border),
  );
}

class AppPassInputTextFormField extends StatefulWidget {
  const AppPassInputTextFormField({
    super.key,
    this.validator,
    required this.labelText,
    this.onChanged,
    this.controller,
  });

  final String? Function(String?)? validator;
  final String labelText;

  final void Function(String?)? onChanged;
  final TextEditingController? controller;

  @override
  State<AppPassInputTextFormField> createState() =>
      _AppPassInputTextFormFieldState();
}

class _AppPassInputTextFormFieldState extends State<AppPassInputTextFormField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return AppInputTextFormField(
      controller: widget.controller,
      labelText: widget.labelText,
      onChanged: widget.onChanged,
      validator: widget.validator,
      obscureText: isHidden,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isHidden = !isHidden;
          });
        },
        icon:
            isHidden
                ? const Icon(Icons.visibility_off_outlined)
                : const Icon(Icons.visibility_outlined),
      ),
    );
  }
}
