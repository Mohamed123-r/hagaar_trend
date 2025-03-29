import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/views/profile/widgets/profile_item.dart';
import 'package:hagaar_trend/views/profile/widgets/switch_profile_button.dart';

import '../../components/app_colors.dart';
import '../../generated/assets.dart';
import '../home/item_details_view.dart';

class ProfileView extends StatelessWidget {
   ProfileView({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
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
              Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 85,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Image.network(
                          "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg",
                          width: 170,
                          height: 170,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "محمد علي عبد القادر",
                      style: AppTextStyles.style16W800(context),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "+20 0109282735242",
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
                title: "عرض القائمة",
                image: Assets.imagesHeart2,
                onPressed: () {},
              ),
              Container(width: 1, height: 35, color: AppColors.border),
              SwitchProfileButton(
                title: 'تعديل بياناتي',
                image: Assets.imagesUser,
                isBlack: false,
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                 index == properties.length - 1
                        ? const EdgeInsets.only(bottom: 100)
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
                              location:
                              properties[index]['location']!,
                              price: properties[index]['price']!,
                            ),
                          ),
                        );
                      },
                      child: ProfileItem(
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
                separatorBuilder:
                    (context, index) => SizedBox(height: 24),
                itemCount: properties.length,
              ),
          ),
          
        ],
      ),
    );
  }
}
