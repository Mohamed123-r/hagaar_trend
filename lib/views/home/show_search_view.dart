import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/constant.dart';
import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/footer_widget.dart';
import '../../generated/assets.dart';
import '../main/widgets/size_config.dart';
import 'item_details_view.dart';
import 'widgets/list_view_item_from_show_list.dart';

class ShowSearchView extends StatelessWidget {
  ShowSearchView({
    super.key,
    this.isSearch = false,
    this.isMarketersSearch = false,
  });

  final List<Map<String, String>> properties = [
    {
      "imageUrl": "https://images.pexels.com/photos/7031400/pexels-photo-7031400.jpeg",
      "name": "فيلا فاخرة بإطلالة بحرية",
      "location": "جدة، السعودية",
      "price": "1,500,000 ريال",
      "type": "فيلا",
      "area": "350 م²",
      "status": "متاح للبيع",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg",
      "name": "شقة راقية في برج سكني",
      "location": "الرياض، السعودية",
      "price": "750,000 ريال",
      "type": "شقة",
      "area": "180 م²",
      "status": "متاح للإيجار",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/2089698/pexels-photo-2089698.jpeg",
      "name": "دور مستقل مع حديقة",
      "location": "الدمام، السعودية",
      "price": "1,200,000 ريال",
      "type": "دور سكني",
      "area": "300 م²",
      "status": "متاح للبيع",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/210617/pexels-photo-210617.jpeg",
      "name": "فيلا حديثة بتصميم عصري",
      "location": "المدينة المنورة، السعودية",
      "price": "1,800,000 ريال",
      "type": "فيلا",
      "area": "400 م²",
      "status": "متاح للبيع",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg",
      "name": "شقة فندقية بإطلالة بانورامية",
      "location": "مكة المكرمة، السعودية",
      "price": "950,000 ريال",
      "type": "شقة",
      "area": "160 م²",
      "status": "متاح للإيجار",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/1643389/pexels-photo-1643389.jpeg",
      "name": "شقة مفروشة بالكامل",
      "location": "الخبر، السعودية",
      "price": "500,000 ريال",
      "type": "شقة",
      "area": "140 م²",
      "status": "متاح للإيجار",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg",
      "name": "فيلا بتصميم أوروبي",
      "location": "الطائف، السعودية",
      "price": "2,000,000 ريال",
      "type": "فيلا",
      "area": "450 م²",
      "status": "متاح للبيع",
      "commission": "1,000 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg",
      "name": "شقة راقية في برج سكني",
      "location": "الرياض، السعودية",
      "price": "750,000 ريال",
      "type": "شقة",
      "area": "180 م²",
      "status": "متاح للإيجار",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/2089698/pexels-photo-2089698.jpeg",
      "name": "دور مستقل مع حديقة",
      "location": "الدمام، السعودية",
      "price": "1,200,000 ريال",
      "type": "دور سكني",
      "area": "300 م²",
      "status": "متاح للبيع",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/210617/pexels-photo-210617.jpeg",
      "name": "فيلا حديثة بتصميم عصري",
      "location": "المدينة المنورة، السعودية",
      "price": "1,800,000 ريال",
      "type": "فيلا",
      "area": "400 م²",
      "status": "متاح للبيع",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg",
      "name": "شقة فندقية بإطلالة بانورامية",
      "location": "مكة المكرمة، السعودية",
      "price": "950,000 ريال",
      "type": "شقة",
      "area": "160 م²",
      "status": "متاح للإيجار",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/1643389/pexels-photo-1643389.jpeg",
      "name": "شقة مفروشة بالكامل",
      "location": "الخبر، السعودية",
      "price": "500,000 ريال",
      "type": "شقة",
      "area": "140 م²",
      "status": "متاح للإيجار",
      "commission": "500 ريال",
    },
    {
      "imageUrl": "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg",
      "name": "فيلا بتصميم أوروبي",
      "location": "الطائف، السعودية",
      "price": "2,000,000 ريال",
      "type": "فيلا",
      "area": "450 م²",
      "status": "متاح للبيع",
      "commission": "1,000 ريال",
    },
  ];
  final bool isSearch;
  final bool isMarketersSearch;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: MediaQuery.of(context).size.width >= 800
            ? null
            : customAppBar(context, title: "نتيجة البحث", showBack: true),
        body: Stack(
          alignment: MediaQuery.of(context).size.width >= 800
              ? Alignment.topCenter
              : Alignment.bottomCenter,
          children: [
            Visibility(
              visible: MediaQuery.of(context).size.width >= 800,
              child: Directionality(
                textDirection: direction,
                child: Row(
                  children: [
                    Image.asset(Assets.imagesShapes4, height: 105),
                    Spacer(),
                    Image.asset(Assets.imagesShapes5, height: 105),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: MediaQuery.of(context).size.width >= 800,
              child: Positioned(
                top: 16,
                child: Container(
                  height: 48,
                  width: 230,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.grey, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.close, color: Colors.red, size: 18),
                        ),
                        Spacer(),
                        Text(
                          "نتيجة البحث",
                          style: AppTextStyles.style16W400(context),
                        ),
                        Spacer(),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            MediaQuery.of(context).size.width >= 800
                ? Padding(
              padding: const EdgeInsets.only(top: 74.0),
                  child: ListView(
                                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetailsView(
                            showFavourite: true,
                            image: properties[index]['imageUrl']!,
                            name: properties[index]['name']!,
                            location: properties[index]['location']!,
                            price: properties[index]['price']!,
                            commission: properties[index]['commission']!,
                          ),
                        ),
                      ),
                      child: ListViewItemFromShowList(
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
                    itemCount: properties.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width <= 1000 ? 3 : 4,
                      childAspectRatio: 1.2,
                    ),
                  ),
                  FooterWidget(),
                                ],
                              ),
                )
                :
                ListView.builder(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailsView(
                          showFavourite: true,
                          image: properties[index]['imageUrl']!,
                          name: properties[index]['name']!,
                          location: properties[index]['location']!,
                          price: properties[index]['price']!,
                          commission: properties[index]['commission']!,
                        ),
                      ),
                    ),
                    child: ListViewItemFromShowList(
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
                  itemCount: properties.length,
                ),


            Visibility(
              visible: isSearch,
              child: Positioned(
                bottom: 16,
                right: 20,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Visibility(
                      visible: !isMarketersSearch,
                      child: MaterialButton(
                        height: 44,
                        minWidth: 140,
                        padding: EdgeInsets.zero,
                        color: AppColors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AppAlertDialog2(
                              title: "تم حفظ الفلترة في فلترتك",
                              onPressedOk: () {},
                            ),
                          );
                        },
                        child: Text(
                          "حفظ نتيجة الفلترة",
                          style: AppTextStyles.style12W700(context).copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                    MaterialButton(
                      height: 44,
                      minWidth: 140,
                      padding: EdgeInsets.zero,
                      color: AppColors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "عرض خريطة العقارات",
                        style: AppTextStyles.style12W700(context).copyWith(color: AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}