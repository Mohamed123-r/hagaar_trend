import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/views/profile/change_location.dart';

import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
import '../../constant.dart';
import '../../generated/assets.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final TextEditingController nameController = TextEditingController(
    text: "محمد علي",
  );
  final TextEditingController phoneController = TextEditingController(
    text: "+20 0108376546221",
  );
  final TextEditingController emailController = TextEditingController(
    text: "kh@led5367gyedv@gmail.com",
  );
  final TextEditingController locationController = TextEditingController(
    text: "السعودية - الرياض - حي الشارقة",
  );
  final TextEditingController membershipController = TextEditingController(
    text: "باحث عن عقار",
  );

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
    membershipController.dispose();
  }

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
              ],
            ),
            Expanded(
              child: EditProfileBody(
                nameController: nameController,
                phoneController: phoneController,
                locationController: locationController,
                onPressed: widget.onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.locationController,
    required this.onPressed,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController locationController;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          spacing: 16,
          children: [
            const SizedBox(),
            Stack(
              children: [
                Container(
                  width: 164,
                  height: 164,
                  decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(240),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.imagesUser,
                      color: AppColors.black,
                      width: 24,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: direction == TextDirection.rtl ? 12 : null,
                  left: direction == TextDirection.ltr ? 12 : null,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(240),
                      border: Border.all(width: 1, color: AppColors.border),
                    ),
                    child: Center(
                      child: SvgPicture.asset(Assets.imagesCamera, width: 16),
                    ),
                  ),
                ),
              ],
            ),
            AppInputTextFormField(
              title: "الاسم",
              controller: nameController,
              keyboardType: TextInputType.name,
            ),

            AppInputTextFormField(
              title: "رقم الهاتف",
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),
            Visibility(
              visible: service == "banker",
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "البنك التابع له",
                    style: AppTextStyles.style14W700(context),
                  ),
                  SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    value: null,
                    hint: Text(
                      " اختر البنك",
                      style: AppTextStyles.style14W400(
                        context,
                      ).copyWith(color: AppColors.grey),
                    ),
                    dropdownColor: AppColors.white,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: AppColors.border,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: AppColors.border,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: AppColors.border,
                          width: 1,
                        ),
                      ),
                    ),
                    items:
                        [
                              "البنك الأهلي",
                              "البنك العربي",
                              "البنك السعودي الفرنسي",
                              "البنك الأول",
                              "البنك السعودي للاستثمار",
                            ]
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
                    onChanged: (newValue) {},
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            AppInputTextFormField(
              title: "العنوان",
              controller: locationController,
              keyboardType: TextInputType.name,
              suffixIcon: SizedBox(
                width: 100,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ChangeLocation()),
                      );
                    },
                    child: Text(
                      "تغير الموقع",
                      style: AppTextStyles.style12W400(context).copyWith(
                        color: AppColors.green,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            MaterialButton(
              height: 44,
              minWidth: 100,
              padding: EdgeInsets.zero,
              color: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              onPressed: onPressed,
              child: Text(
                service == "owner" ? "التالي" : "حفظ التغييرات",
                style: AppTextStyles.style12W700(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class EditOwnerProfileView extends StatefulWidget {
  const EditOwnerProfileView({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  State<EditOwnerProfileView> createState() => _EditOwnerProfileViewState();
}

class _EditOwnerProfileViewState extends State<EditOwnerProfileView> {
  final TextEditingController nameController = TextEditingController(
    text: "شركة صلاح سالم",
  );
   final TextEditingController number1Controller = TextEditingController(
    text: "3456789023",
  );

  final TextEditingController number2Controller = TextEditingController(
    text: "3456789023",
  );

  final TextEditingController number3Controller = TextEditingController(
    text: "3456789023",
  );



  @override
  void dispose() {
    super.dispose();
    nameController.dispose();

  }

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
              ],
            ),
            Expanded(
              child: EditOwnerProfileViewBody(
                nameController: nameController,
                number1Controller:number1Controller ,
                number2Controller: number2Controller,
                number3Controller:number3Controller ,
                onPressed: widget.onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditOwnerProfileViewBody extends StatelessWidget {
  const EditOwnerProfileViewBody({
    super.key,
    required this.nameController,
    required this.number1Controller,
    required this.number2Controller,

    required this.number3Controller, required this.onPressed,
  });

  final TextEditingController nameController;
  final TextEditingController number1Controller;
  final TextEditingController number2Controller;
  final TextEditingController number3Controller;


  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          spacing: 16,
          children: [
            Text(
              "تعديل بياناتي",
              style: AppTextStyles.style24W800(context).
              copyWith(
                color: AppColors.green
              ),
            ),
            const SizedBox(
              width: 364,
            ),

            AppInputTextFormField(
              title: "إسم الشركة / المكتب تلعقاري",
              controller: nameController,
              keyboardType: TextInputType.name,
            ),

            AppInputTextFormField(
              title: "رقم السجل التجاري",
              controller:  number1Controller,
              keyboardType: TextInputType.phone,
            ),
            AppInputTextFormField(
              title: "رقم رخصة فال",
              controller:  number2Controller,
              keyboardType: TextInputType.phone,
            ),
            AppInputTextFormField(
              title: "رقم رخصة نفاذ",
              controller:  number3Controller,
              keyboardType: TextInputType.phone,
            ),

            SizedBox(
              height: 32,
            ),
            MaterialButton(
              height: 44,
              minWidth: 100,
              padding: EdgeInsets.zero,
              color: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              onPressed: onPressed,
              child: Text(
                "حفظ التغيرات",
                style: AppTextStyles.style12W700(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
