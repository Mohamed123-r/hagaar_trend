import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../components/app_form_filed.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import 'widgets/pinput.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  int step =
      1; // To track the steps (1: Enter Email, 2: Enter Code, 3: Change Password)
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.imagesShap2),
                    Image.asset(Assets.imagesShap1),
                  ],
                ),
                Positioned(
                  top: 32,
                  right: direction == TextDirection.rtl ? 16 : null,
                  left: direction == TextDirection.ltr ? 16 : null,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(80),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:Container(
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
                    "إعادة تعيين كلمة المرور",
                    style: AppTextStyles.style24W800(
                      context,
                    ).copyWith(color: AppColors.green),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        step == 1
                            ? 'أدخل رقم الهاتف'
                            : step == 2
                            ? 'أدخل رقم تأكيد الحساب'
                            : 'ادخل كلمة المرور',
                        style: AppTextStyles.style16W400(context),
                      ),
                      const SizedBox(height: 5),
                      Divider(indent: 150, endIndent: 150),
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (step == 1) ...[
                                    AppInputTextFormField(
                                      labelText: 'رقم الهاتف',
                                      suffixIcon: Icon(Icons.phone_outlined),
                                      keyboardType: TextInputType.phone,
                                      controller: emailController,
                                    ),
                                  ],
                                  if (step == 2) ...[
                                    PinInputStyles.buildPinInput(
                                      onCompleted: (pin) {
                                        //  print("User entered PIN: $pin");
                                      },
                                    ),
                                    SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () {

                                      },
                                      child: Text(
                                        "إعادة إرسال الكود",
                                        style: AppTextStyles.style10W400(
                                          context,
                                        ).copyWith(
                                          color: AppColors.accentColor,
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              AppColors.accentColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                  if (step == 3) ...[
                                    AppPassInputTextFormField(
                                      labelText: "كلمة المرور",
                                      controller: passwordController,
                                    ),
                                    AppPassInputTextFormField(
                                      labelText: "كلمة المرور",
                                      controller: confirmPasswordController,
                                    ),
                                  ],
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
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  setState(() {
                                    if (step == 1) {
                                      step = 2;
                                    } else if (step == 2) {
                                      step = 3;
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder:
                                            (context) => AppAlertDialog2(
                                              title: 'تمت العملية بنجاح',
                                              onPressedOk: () {},
                                            ),
                                      );
                                    }
                                  });
                                }
                              },
                              child: Text(
                                step == 1 || step == 2 ? "التالي" : "موافق",
                                style: AppTextStyles.style12W700(
                                  context,
                                ).copyWith(color: AppColors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
