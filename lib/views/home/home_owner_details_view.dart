import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/home/widgets/home_owner_details_item_view.dart';

import '../main/main_view.dart';
import '../profile/widgets/profile_item.dart';
import 'item_details_view.dart';

class HomeOwnerDetailsView extends StatelessWidget {
  HomeOwnerDetailsView({super.key});

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
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(Assets.imagesLogo, height: 54, width: 64),
                Spacer(),
                MaterialButton(
                  color: AppColors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainView()),
                    );
                  },
                  child: Text(
                    "تخطي",
                    style: AppTextStyles.style12W400(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          index == properties.length - 1
                              ? const EdgeInsets.only(bottom: 80)
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
                        child: HomeOwnerDetailsItemView(
                          image: properties[index]['imageUrl']!,
                          name: properties[index]['name']!,
                          location: properties[index]['location']!,
                          price: properties[index]['price']!,
                          type: properties[index]['type']!,
                          area: properties[index]['area']!,
                          status: properties[index]['status']!,
                          commission: properties[index]['commission']!,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 12),
                  itemCount: properties.length,
                ),
                Positioned(
                  bottom: 20,

                  child: MaterialButton(
                    height: 44,
                    color: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200),
                    ),
                    onPressed: () {},
                    child: Text(
                      "تحديث حالة عقاراتك",
                      style: AppTextStyles.style12W700(
                        context,
                      ).copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
