import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/components/custom_success_alert_dialog.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/views/auth/auth_view.dart';
import 'package:hagaar_trend/views/comapnys/widgets/company_item.dart';
import 'package:hagaar_trend/views/comapnys/widgets/data_from_company_view.dart';
import 'package:hagaar_trend/views/profile/edit_profile_view.dart';
import 'package:hagaar_trend/views/profile/widgets/edit_data_button.dart';
import 'package:hagaar_trend/views/profile/widgets/profile_item.dart';
import 'package:hagaar_trend/views/profile/widgets/switch_profile_button.dart';

import '../../components/app_colors.dart';
import '../../generated/assets.dart';
import '../home/item_details_view.dart';
import 'location_from_comany.dart';

class ComapnysDetailsView extends StatefulWidget {
  const ComapnysDetailsView({super.key});

  @override
  State<ComapnysDetailsView> createState() => _comapnysDetailsView();
}

class _comapnysDetailsView extends State<ComapnysDetailsView> {
  final List<Map<String, String>> properties = [
    {
      "imageUrl":
          "https://images.pexels.com/photos/7031400/pexels-photo-7031400.jpeg",
      "name": "فيلا فاخرة بإطلالة بحرية",
      "location": "جدة، السعودية",
      "price": "1,500,000 ريال",
      "type": "فيلا",
      "area": "350 م²",
      "status": "متاح للبيع",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg",
      "name": "شقة راقية في برج سكني",
      "location": "الرياض، السعودية",
      "price": "750,000 ريال",
      "type": "شقة",
      "area": "180 م²",
      "status": "متاح للإيجار",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/2089698/pexels-photo-2089698.jpeg",
      "name": "دور مستقل مع حديقة",
      "location": "الدمام، السعودية",
      "price": "1,200,000 ريال",
      "type": "دور سكني",
      "area": "300 م²",
      "status": "متاح للبيع",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/210617/pexels-photo-210617.jpeg",
      "name": "فيلا حديثة بتصميم عصري",
      "location": "المدينة المنورة، السعودية",
      "price": "1,800,000 ريال",
      "type": "فيلا",
      "area": "400 م²",
      "status": "متاح للبيع",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg",
      "name": "شقة فندقية بإطلالة بانورامية",
      "location": "مكة المكرمة، السعودية",
      "price": "950,000 ريال",
      "type": "شقة",
      "area": "160 م²",
      "status": "متاح للإيجار",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/1643389/pexels-photo-1643389.jpeg",
      "name": "شقة مفروشة بالكامل",
      "location": "الخبر، السعودية",
      "price": "500,000 ريال",
      "type": "شقة",
      "area": "140 م²",
      "status": "متاح للإيجار",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg",
      "name": "فيلا بتصميم أوروبي",
      "location": "الطائف، السعودية",
      "price": "2,000,000 ريال",
      "type": "فيلا",
      "area": "450 م²",
      "status": "متاح للبيع",
    },
  ];

  bool showMyItems = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 8),
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
                Padding(
                  padding: const EdgeInsets.only(top: 64.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 85,
                        backgroundColor: AppColors.grey,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/05a9/7594/68320b00b6544e3b14211001a519abef?Expires=1745193600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=kTON~MHiqGVcOD7hvgmCQTzF~L0BF0P4oJRwnsUDaX~sPZ4afha1YSJWYyehjuxXB~rSZko1q~FAiTeY8G-Yj045Hf0YbexxOkszoGuXmfbngFGywt6OKUYTUeApJcOqqe2i7B5y05usT4bXV8GOQpLi5W9CdpWoVEWL9jHUbgH4kcaHaKEWWCiDCZVToHzNNL2HalBKukXJ9q33H4utTbDTbCXPCMtIYHScK3bw2Gm35~7dlCBujUmu7seZK84vXTX9J10LZ9QedgFo4CXEIcxsS-g0BFRgCbruy2ydf~~0ackXAadHuix8sHVYeuqAI1MV3PZQonkcRY~hpgzzjg__",
                            width: 170,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "شركة الخضير للعقارات",
                        style: AppTextStyles.style16W800(context),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "م.  محمد علي همام",
                        style: AppTextStyles.style12W400(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              spacing: 24,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SwitchProfileButton(
                  title: "العقارات",
                  image: Assets.imagesBuildings,
                  isBlack: showMyItems,
                  onPressed: () {
                    setState(() {
                      showMyItems = true;
                    });
                  },
                ),
                Container(width: 1, height: 35, color: AppColors.border),
                SwitchProfileButton(
                  title: 'بيانات المسوق',
                  image: Assets.imagesChartLine,
                  isBlack: !showMyItems,
                  onPressed: () {
                    setState(() {
                      showMyItems = false;
                    });
                  },
                ),
              ],
            ),
            SingleChildScrollView(
              child: Visibility(
                visible: !showMyItems,
                child: Column(
                  children: [
                    SizedBox(height: 44),
                    DataFromCompanyView(
                      title: "الإسم :",

                      value: "خالد مصطفي عبد القادر",
                      isGreen: true,
                    ),
                    DataFromCompanyView(
                      title: "رقم الهاتف :",

                      value: "+20 010038366545",
                    ),
                    DataFromCompanyView(
                      title: "الإيميل :",

                      value: "hg2df675672@gmail.com",
                      isGreen: true,
                    ),

                    // DataFromCompanyView(
                    //   title: "موقع الشركة :",
                    //
                    //   textButton: TextButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => LocationFromComapny(),
                    //         ),
                    //       );
                    //     },
                    //     child: Text(
                    //       "المملكة العربية السعودية - الرياض",
                    //       style: AppTextStyles.style12W400(context).copyWith(
                    //         color: AppColors.green,
                    //         decoration: TextDecoration.underline,
                    //         decorationColor: AppColors.green,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // DataFromCompanyView(
                    //   title: "الموقع الإلكتروني :",
                    //   isGreen: true,
                    //   value: "lkjhyewrui@gmail.com",
                    // ),
                    // DataFromCompanyView(
                    //   title: "السجل التجاري :",
                    //
                    //   value: "12345678901",
                    // ),
                    // DataFromCompanyView(
                    //   title: "نبذة عن الشركة :",
                    //   isGreen: true,
                    //   isColum: true,
                    //   value:
                    //       "تأسست شركة دار المعمار في عام 1985 كمؤسسة صغيرة متخصصة في بناء المنازل السكنية بالرياض، ثم توسعت خلال التسعينيات لتشمل تطوير المشاريع التجارية والمجمعات السكنية الكبيرة، وفي العقد الأول من القرن الحادي والعشرين تخصصت في تطوير المشاريع الفاخرة والمستدامة، لتصبح اليوم واحدة من الشركات الرائد في مجال التطوير العقاري في المنطقة، وتسعى إلى التوسع في أسواق جديدة وتبني أحدث التقنيات في مشاريعها.",
                    // ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Visibility(
                visible: showMyItems,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          index == properties.length - 1
                              ? const EdgeInsets.only(bottom: 16)
                              : EdgeInsets.zero,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ItemDetailsView(
                                    image: properties[index]['imageUrl']!,
                                    name: properties[index]['name']!,
                                    location: properties[index]['location']!,
                                    price: properties[index]['price']!,
                                    commission:
                                        properties[index]['commission']!,
                                  ),
                            ),
                          );
                        },
                        child: CompanyItem(
                          image: properties[index]['imageUrl']!,
                          name: properties[index]['name']!,
                          location: properties[index]['location']!,
                          price: properties[index]['price']!,
                          type: properties[index]['type']!,
                          area: properties[index]['area']!,
                          status: properties[index]['status']!,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 16),
                  itemCount: properties.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
