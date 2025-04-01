import 'package:flutter/cupertino.dart';

import 'package:pinput/pinput.dart';

import '../../../components/app_colors.dart';

class PinInputStyles {
  static final PinTheme defaultPinTheme = PinTheme(
    width: 42,
    height: 42,
    textStyle: const TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.border),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static final PinTheme focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
    borderRadius: BorderRadius.circular(12),
  );

  static final PinTheme submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: const Color.fromRGBO(234, 239, 243, 1),
    ),
  );

  static Widget buildPinInput(
      {required Function(String) onCompleted, int length = 6}) {
    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: length,
      // validator: (s) => s == '222222' ? null : 'Pin is incorrect',
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: onCompleted,
    );
  }
}
