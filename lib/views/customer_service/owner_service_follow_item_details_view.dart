import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_service_item.dart';
import 'package:hagaar_trend/views/home/location_view.dart';
import 'package:hagaar_trend/views/home/widgets/ask_for_real_estate_alart_dialog.dart';
import 'package:hagaar_trend/views/home/widgets/data_from_item_details_view.dart';
import 'package:hagaar_trend/views/home/widgets/features_from_item_details_view.dart';

import '../../components/app_alert_dialog.dart';
import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
import '../../components/app_text_styles.dart';
import '../../generated/assets.dart';
import '../home/widgets/home_owner_details_item_view.dart';
import 'inquiries_view.dart';

class OwnerServiceFollowItemDetailsView extends StatelessWidget {
  const OwnerServiceFollowItemDetailsView({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.location,
    this.showFavourite = false,
    required this.commission,
    this.isFollow = false,
  });
  final bool isFollow;
  final bool showFavourite;
  final String image;
  final String name;
  final String price;
  final String commission;

  final String location;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: customAppBar(context, title: "تحليل عقاراتي",showBack: true),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:  12.0),
                child: Column(
                  spacing: 12,
                  children: [
                    OwnerServiceItem(title: 'عدد الزيارات :',value:  "324",),

                    OwnerServiceItem(title: 'عدد الإستفسارات :',value:  "24", onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InquiriesView(),
                        ),
                      );
                    }),

                    OwnerServiceItem(title: 'عدد طلبات الشراء الجاد :',value:  "4", onTap: () {}),
                    Visibility(
                      visible: !isFollow,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffeeeeee),
                        ),
                        child: StatusSelector(),
                      ),
                    ),],
                ),
              ),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "بيانات العقار",
                    style: AppTextStyles.style16W800(context).copyWith(
                        color: AppColors.green
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(image, fit: BoxFit.cover),
                ),
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
                          "السعر :  ",
                          style: AppTextStyles.style13W400(context),
                        ),
                        Text(
                          price,
                          style: AppTextStyles.style13W400(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          location,
                          style: AppTextStyles.style14W400(
                            context,
                          ).copyWith(color: AppColors.grey),
                        ),
                        Spacer(),
                        Text(
                          "العمولة :  ",
                          style: AppTextStyles.style13W400(context),
                        ),
                        Text(
                          commission,
                          style: AppTextStyles.style13W400(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                      ],
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
                title: "مساحة العقار :",
                image: Assets.imagesVectorTwo,
                value: "312 متر مربع",
                isGreen: true,
              ),
              DataFromItemDetailsView(
                title: "السعر :",
                image: Assets.imagesVectorTwo,
                value: "890 ألف ريال / غير قابل للتفاوض",
              ),
              DataFromItemDetailsView(
                title: "ال  id للعقار :",
                image: Assets.imagesChartPie,
                value: "873562143",
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
              FeaturesFromItemDetailsView(value1: "دوبلكس", isGreen: true),
              FeaturesFromItemDetailsView(value1: "8 غرفة للدور"),
              FeaturesFromItemDetailsView(value1: "قبو", isGreen: true),
              FeaturesFromItemDetailsView(value1: "مسبح"),
              FeaturesFromItemDetailsView(value1: "مدخل سيارة", isGreen: true),
              FeaturesFromItemDetailsView(value1: "حديقة خاصة"),
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

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: AppInputTextFormField(
                  maxLines: 5,
                  labelText: "أكتب إستفسارك",
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LocationView()),
                    );
                  },
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
              ),
              SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "العقد الإلكتروني :",
                            style: AppTextStyles.style14W400(context),
                          ),

                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "negotate.pdf",
                              style: AppTextStyles.style14W400(
                                context,
                              ).copyWith(color: AppColors.middleGreen),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            direction == TextDirection.ltr
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                        children: [
                          Text(
                            "المسوق العقاري :",
                            style: AppTextStyles.style16W800(context),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "أ / محمد علي عبد القادر",
                            style: AppTextStyles.style12W400(context),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment:
                                direction == TextDirection.ltr
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                            children: [
                              Text(
                                "+20 0109287363542",
                                style: AppTextStyles.style14W700(
                                  context,
                                ).copyWith(color: Color(0xff29A71A)),
                              ),
                              const SizedBox(width: 6),
                              SvgPicture.asset(
                                Assets.imagesWhatsappLogo,
                                color: Color(0xff29A71A),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: AppColors.grey,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
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
