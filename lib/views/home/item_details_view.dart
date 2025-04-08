import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/views/home/location_view.dart';
import 'package:hagaar_trend/views/home/widgets/data_from_item_details_view.dart';
import 'package:hagaar_trend/views/home/widgets/features_from_item_details_view.dart';

import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leadingWidth: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          surfaceTintColor: AppColors.black,
          leading: SizedBox(),
          title: Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
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
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 140,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.middleGreen,
                  ),
                  child: Center(
                    child: Text(
                      "طلب شراء جاد",
                      style: AppTextStyles.style12W400(
                        context,
                      ).copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: 16,
              //   right: direction == TextDirection.rtl ? 16 : null,
              //   left: direction == TextDirection.ltr ? 16 : null,
              //   child: CircleAvatar(
              //     radius: 15,
              //     backgroundColor: Color(0xffADADAD),
              //     child: SvgPicture.asset(Assets.imagesHeart),
              //   ),
              // ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(image, fit: BoxFit.cover),
                  ),
                  Positioned(
                    bottom: 16,

                    child: Container(
                      height: 32,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 8,
                          children: [
                            Text(
                              "1 / 5",
                              style: AppTextStyles.style10W400(context),
                            ),
                            SvgPicture.asset(
                              Assets.imagesImage,
                              width: 16,
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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
              DataFromItemDetailsView(
                title: "السعر :",
                image: Assets.imagesVectorTwo,
                value: "890 ألف ريال / غير قابل للتفاوض",
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
              FeaturesFromItemDetailsView(value1: "مسبح", value2: "غرفة خادمة",),
              FeaturesFromItemDetailsView(
                value1: "مدخل سيارة",
                value2: "غرفة سائق",
                isGreen: true,
              ),
              FeaturesFromItemDetailsView(value1: "حديقة خاصة",),
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
                  child:



                  Container(
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: AppColors.grey,
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/4bd6/eab2/f03426a5e015cd5bd37007c9ae0dd5fc?Expires=1745193600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=HY-Cs08WI5JV6Ez~Hcx0Z7odtC9QrWOF6mGNiV5p36Uf-1hTtidMZ-Fmd37YN9DIjjHBYvIT~1z1V-o8HiGKNDaweH0j6nIV4TJ4h-ebYO8Oi1~Snq3A1TmGbTKxDn0RrGZqXrzVA-b8LUSb8YujAj-1~yMKpG4ZfiBhaXubIoEhvPizZDXo7dWrxZ6i3ja-blVvhxfsZPvCnIskzmsQb87EVI3RwPuJdCXXpT4gNo35tDw78RZkk28YtApcY~rNQVgQfESqTdFbdD9iOdehq-a4OWAMZn4t2AbRRT2YpQSmswqOg6PsW9t72uTzOeWTeirbvW64T5BNtk56yxs81g__",
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
                            "مالك العقارات :",
                            style: AppTextStyles.style16W800(context),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "أ / خالد أحمد عبد الظاهر",
                            style: AppTextStyles.style12W400(context),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 12),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: AppColors.grey,
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/3aed/d79e/6594a5bb1857e48aa0783ba903b24094?Expires=1745193600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mvmoKwJQbCFM25az7xxX42jIGnO6y7IsKzGfe3VGr7wzEz~T-lCgtjFoeZUVU2tIq5rSCJT~M0zeANah0KMjEBI-hW7rC58VMqiNSisKV9vezZFTIkyK5GTrhnPCBAoma07HjhJ9qHcuHajjtfNiRSOYT81XJCnNoxPVb4nI5oYFK0BAcXa48v~SFhFRE1UDUaxgaV14AJPck2kX7Q6iXLzfrFx3jxwgocmGyxjW7cLT8Dqil6TtmZu8yKqPqx7uqwX1HfCxuH8iGjOcLKgmPUxk6ceFXEpfhWDkNKVbGK7Qi7FOeRj-YkxIFQMPDgPI8fTRhorJK2jzsAzJ8bW-qA__",
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
