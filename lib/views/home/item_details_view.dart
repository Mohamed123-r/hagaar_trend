import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/views/home/widgets/data_from_item_details_view.dart';
import 'package:hagaar_trend/views/home/widgets/features_from_item_details_view.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../generated/assets.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.location,
  });

  final String image;
  final String name;
  final String price;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(image, fit: BoxFit.cover),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(name, style: AppTextStyles.style16W400(context)),
                        Spacer(),
                        Text(
                          price,
                          style: AppTextStyles.style18W400(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                      ],
                    ),
                    Text(
                      location,
                      style: AppTextStyles.style14W400(
                        context,
                      ).copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "معلومات العقار",
                  style: AppTextStyles.style16W800(context),
                ),
              ),
              SizedBox(height: 12),
              DataFromItemDetailsView(
                title: "قسم العقار :",
                image: Assets.imagesDoorOpen,
                value: "للبيع",
                isGreen: true,
              ),
              DataFromItemDetailsView(
                title: "نوع العقار :",
                image: Assets.imagesHouse,
                value: "فيلا",
              ),
              DataFromItemDetailsView(
                title: "إتجاه العقار :",
                image: Assets.imagesNavigationArrow,
                value: "شرق الرياض",
                isGreen: true,
              ),
              DataFromItemDetailsView(
                title: "مساحة العقار :",
                image: Assets.imagesVectorTwo,
                value: "312 متر مربع",
              ),
              DataFromItemDetailsView(
                title: "عمر العقار :",
                image: Assets.imagesChartPie,
                value: "جديد",
                isGreen: true,
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "مميزات العقار",
                  style: AppTextStyles.style16W800(context),
                ),
              ),
              SizedBox(height: 12),
              FeaturesFromItemDetailsView(
                value1: "دوبلكس",
                value2: "درج الصالة",
                isGreen: true,
              ),
              FeaturesFromItemDetailsView(
                value1: "8 غرفة للدور",
                value2: "تابع لمؤثثة",
              ),
              FeaturesFromItemDetailsView(
                value1: "قبو",
                value2: "3 حمام للدور",
                isGreen: true,
              ),
              FeaturesFromItemDetailsView(value1: "مسبح", value2: "غرفة خادمة"),
              FeaturesFromItemDetailsView(
                value1: "مدخل سيارة",
                value2: "غرفة سائق",
                isGreen: true,
              ),
              FeaturesFromItemDetailsView(value1: "دوبلكس"),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "وصف العقار",
                  style: AppTextStyles.style16W800(context),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "تشكل فيلاّ ديستي في تيوفولي بقصرها وحديقتها شهادة من الشهادات الأكثر بروزًا وكمالاً على ثقافة عصر النهضة الأوروبية بما فيها من عناصر نقية. وفيلاّ ديستي بتصميمها المبدِع والعبقرية في الأعمال الهندسية في حديقتها (بِرك، وأحوض، إلخ)، هي مثل لا مثيل له عن الحديقة الإيطالية في القرن السادس عشر. وشكلت فيلاّ ديستي، وهي إحدى حدائق الروائع الأولى، نموذجًا مبكرًا لتطور الحدائق في أوروبا.",
                  style: AppTextStyles.style14W400(
                    context,
                  ).copyWith(color: AppColors.grey),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "الموقع",
                                style: AppTextStyles.style16W800(context),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "المنطقة :",
                                    style: AppTextStyles.style12W400(
                                      context,
                                    ).copyWith(color: AppColors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "منطقة الرياض",
                                    style: AppTextStyles.style12W400(context),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "المدينة :",
                                    style: AppTextStyles.style12W400(
                                      context,
                                    ).copyWith(color: AppColors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "الرياض",
                                    style: AppTextStyles.style12W400(context),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "الحي :",
                                    style: AppTextStyles.style12W400(
                                      context,
                                    ).copyWith(color: AppColors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "حي الهدا",
                                    style: AppTextStyles.style12W400(context),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "الرمز البريدي :",
                                    style: AppTextStyles.style12W400(
                                      context,
                                    ).copyWith(color: AppColors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "12725",
                                    style: AppTextStyles.style12W400(context),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(Assets.imagesMap),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "المعلن",
                                style: AppTextStyles.style16W800(context),
                              ),

                              Text(
                                "مكتب المستقبل لك للعقارات",
                                style: AppTextStyles.style12W400(context),
                              ),
                              MaterialButton(
                                minWidth: 100,
                                height: 32,
                                color: AppColors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(Assets.imagesWhatsappLogo),
                                    SizedBox(width: 8),
                                    Text(
                                      "واتساب",
                                      style: AppTextStyles.style12W700(
                                        context,
                                      ).copyWith(color: AppColors.white),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Image.asset(Assets.imagesTest2),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
