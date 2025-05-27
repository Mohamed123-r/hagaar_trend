import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/custom_success_alert_dialog.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../components/app_form_filed.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import 'widgets/pinput.dart';

class ConfirmAuth extends StatelessWidget {
  const ConfirmAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: direction,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                MediaQuery.of(context).size.width > 800
                    ? Row(
                        children: [
                          Image.asset(Assets.imagesShapes4, height: 105),
                          Spacer(),
                          Image.asset(Assets.imagesShapes5, height: 105),
                        ],
                      )
                    :
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.imagesShap2),
                    Image.asset(Assets.imagesShap1),
                  ],
                ),
                Positioned(
                  top: 40,
                  right: direction == TextDirection.rtl ? 16 : null,
                  left: direction == TextDirection.ltr ? 16 : null,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.middleGreen,
                      ),
                      child: GestureDetector(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text(
                    "تأكيد حسابك",
                    style: AppTextStyles.style24W800(
                      context,
                    ).copyWith(color: AppColors.green),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width > 800
                  ? 530
                  : MediaQuery.of(context).size.width,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Text(
                          'أدخل رقم تأكيد الحساب',
                          style: AppTextStyles.style16W400(context),
                        ),
                        const SizedBox(height: 5),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  PinInputStyles.buildPinInput(
                                    length: 4,
                                    onCompleted: (pin) {

                                      //  print("User entered PIN: $pin");
                                    },
                                  ),
                                  SizedBox(height: 12),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "إعادة إرسال الكود",
                                      style: AppTextStyles.style10W400(
                                        context,
                                      ).copyWith(
                                        color: AppColors.accentColor,
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.accentColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(
                              height: 44,
                              minWidth: 100,
                              padding: EdgeInsets.zero,
                              color: AppColors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder:
                                      (context) =>
                                          CustomSuccessAlertDialog(
                                            title:
                                                "تم تفعيل حسابك بنجاح",
                                            onPressedOk: (){},
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
