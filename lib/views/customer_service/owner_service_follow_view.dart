import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_service_item.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_top_service_card.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';
import '../home/item_details_view.dart';
import '../home/widgets/home_owner_details_item_view.dart';
import '../home/widgets/list_view_item_from_show_list.dart';
import '../profile/change_location.dart';
import '../profile/widgets/profile_item.dart';
import 'customer_service_view.dart';
import 'owner_service_follow_item_details_view.dart';

class OwnerServiceFollowView extends StatelessWidget {
  OwnerServiceFollowView({super.key});

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
      "commission": "500 ريال",
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
      "commission": "500 ريال",
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
      "commission": "500 ريال",
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
      "commission": "500 ريال",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg",
      "name": "شقة فندقية ",
      "location": "مكة المكرمة، السعودية",
      "price": "950,000 ريال",
      "type": "شقة",
      "area": "160 م²",
      "status": "متاح للإيجار",
      "commission": "500 ريال",
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
      "commission": "500 ريال",
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
      "commission": "500 ريال",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar:
            MediaQuery.of(context).size.width > 800
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
                                "متابعة عقاراتي",
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
                : customAppBar(
                  context,
                  title: "متابعة عقاراتي",
                  showBack: true,
                ),

        body: Column(
          children: [
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          elevation: 0,
                          height: 44,
                          onPressed: () {},
                          color: AppColors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "عقارات متاحة",
                            style: AppTextStyles.style14W400(
                              context,
                            ).copyWith(color: Color(0xFFeeeeee)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          elevation: 0,
                          height: 44,
                          onPressed: () {},
                          color: Color(0xFFeeeeee),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "عقارات محجوزة",
                            style: AppTextStyles.style14W400(
                              context,
                            ).copyWith(color: AppColors.green),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          elevation: 0,
                          height: 44,
                          onPressed: () {},
                          color: Color(0xFFeeeeee),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "عقارات مباعة",
                            style: AppTextStyles.style14W400(
                              context,
                            ).copyWith(color: AppColors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color(0xFFeeeeee),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "عدد العقارات المتاحة :",
                          style: AppTextStyles.style14W400(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                        Text(
                          "4",
                          style: AppTextStyles.style14W400(
                            context,
                          ).copyWith(color: AppColors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child:
                  MediaQuery.of(context).size.width >= 800
                      ? GridView.builder(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width > 800 ? 24 : 0,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (
                                        context,
                                      ) => OwnerServiceFollowItemDetailsView(
                                        isFollow: true,
                                        image: properties[index]['imageUrl']!,
                                        name: properties[index]['name']!,
                                        location:
                                            properties[index]['location']!,
                                        price: properties[index]['price']!,
                                        commission:
                                            properties[index]['commission']!,
                                      ),
                                ),
                              );
                            },
                            child: HomeOwnerDetailsItemView(
                              isFollow: true,
                              image: properties[index]['imageUrl']!,
                              name: properties[index]['name']!,
                              location: properties[index]['location']!,
                              price: properties[index]['price']!,
                              type: properties[index]['type']!,
                              area: properties[index]['area']!,
                              status: properties[index]['status']!,
                              commission: properties[index]['commission']!,
                            ),
                          );
                        },
                        itemCount: properties.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.of(context).size.width <= 1000 ? 2 : 3,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,

                          childAspectRatio: 2.2,
                        ),
                      )
                      : ListView.separated(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (
                                        context,
                                      ) => OwnerServiceFollowItemDetailsView(
                                        isFollow: true,
                                        image: properties[index]['imageUrl']!,
                                        name: properties[index]['name']!,
                                        location:
                                            properties[index]['location']!,
                                        price: properties[index]['price']!,
                                        commission:
                                            properties[index]['commission']!,
                                      ),
                                ),
                              );
                            },
                            child: HomeOwnerDetailsItemView(
                              isFollow: true,
                              image: properties[index]['imageUrl']!,
                              name: properties[index]['name']!,
                              location: properties[index]['location']!,
                              price: properties[index]['price']!,
                              type: properties[index]['type']!,
                              area: properties[index]['area']!,
                              status: properties[index]['status']!,
                              commission: properties[index]['commission']!,
                            ),
                          );
                        },
                        separatorBuilder:
                            (context, index) => SizedBox(height: 12),
                        itemCount: properties.length,
                      ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownField extends StatelessWidget {
  final String hint;

  const DropdownField({required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          borderRadius: BorderRadius.circular(12),
          value: null,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.grey,
          ),
          dropdownColor: AppColors.white,
          hint: Text(
            hint,
            style: AppTextStyles.style14W400(
              context,
            ).copyWith(color: AppColors.grey),
          ),
          items: [
            DropdownMenuItem(
              alignment:
                  direction == TextDirection.rtl
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
              value: 'Option 1',
              child: Text('Option 1'),
            ),
            DropdownMenuItem(
              alignment:
                  direction == TextDirection.rtl
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            DropdownMenuItem(
              alignment:
                  direction == TextDirection.rtl
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
              value: 'Option 3',
              child: Text('Option 3'),
            ),
          ],
          onChanged: (_) {},
        ),
      ),
    );
  }
}
