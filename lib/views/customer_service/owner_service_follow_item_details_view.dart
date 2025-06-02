import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/views/customer_service/serious_purchase%20_inquiries_view.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_service_item.dart';
import 'package:hagaar_trend/views/home/location_view.dart';
import 'package:hagaar_trend/views/home/widgets/ask_for_real_estate_alart_dialog.dart';
import 'package:hagaar_trend/views/home/widgets/data_from_item_details_view.dart';
import 'package:hagaar_trend/views/home/widgets/features_from_item_details_view.dart';

import '../../components/app_alert_dialog.dart';
import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
import '../../components/app_text_styles.dart';
import '../../components/footer_widget.dart';
import '../../generated/assets.dart';
import '../home/item_details_view.dart';
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
        appBar:  MediaQuery.of(context).size.width > 800
            ? AppBar(
          leadingWidth: 0,
          elevation: 0,
          toolbarHeight: 100,
          leading: SizedBox(),
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
          title: Directionality(
            textDirection: direction,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.asset(Assets.imagesShapes4, height: 105),
                    Spacer(),
                    Image.asset(Assets.imagesShapes5, height: 105),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    spacing: 16,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(80),
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
                      Spacer(),
                      Text(
                        "تحليل عقاراتي",
                        style: AppTextStyles.style20W400(context),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
            : customAppBar(context, title: "تحليل عقاراتي", showBack: true),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  spacing: 12,
                  children: [
                    OwnerServiceItem(title: 'عدد الزيارات :', value: "324"),

                    OwnerServiceItem(
                      title: 'عدد الإستفسارات :',
                      value: "24",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InquiriesView(),
                          ),
                        );
                      },
                    ),

                    OwnerServiceItem(
                      title: 'عدد طلبات الشراء الجاد :',
                      value: "4",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => SeriousPurchaseInquiriesView(),
                          ),
                        );
                      },
                    ),
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "بيانات العقار",
                    style: AppTextStyles.style16W800(
                      context,
                    ).copyWith(color: AppColors.green),
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
              SizedBox(
                width: MediaQuery.of(context).size.width > 800 ? 1000 : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    """
تشكل فيلاّ ديستي في تيوفولي بقصرها وحديقتها شهادة من الشهادات الأكثر بروزًا وكمالاً على ثقافة عصر النهضة الأوروبية بما فيها من عناصر نقية. وفيلاّ ديستي بتصميمها المبدِع والعبقرية في الأعمال الهندسية في حديقتها (بِرك، وأحوض، إلخ)، هي مثل لا مثيل له عن الحديقة الإيطالية في القرن السادس عشر. وشكلت فيلاّ ديستي، وهي إحدى حدائق الروائع الأولى، نموذجًا مبكرًا لتطور الحدائق في أوروبا.""",
                    style: AppTextStyles.style14W400(
                      context,
                    ).copyWith(color: AppColors.grey),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width > 800 ? 800 : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: AppInputTextFormField(
                      maxLines: 5,
                      labelText: "أكتب إستفسارك",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              if (MediaQuery.of(context).size.width > 800)
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: LocationSection()),

                        Expanded(
                          child: Column(
                            children: [
                              ElectronicContractSection(),
                              SizedBox(height: 16),
                              RealEstateMarketerSection(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    FooterWidget(),
                  ],
                )
              else
                Column(
                  children: [
                    LocationSection(),
                    SizedBox(height: 16),
                    ElectronicContractSection(),
                    SizedBox(height: 16),
                    RealEstateMarketerSection(),
                    SizedBox(height: 16),
                  ],
                ),

            ],
          ),
        ),
      ),
    );
  }
}
