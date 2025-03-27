import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/home/item_details_view.dart';
import 'package:hagaar_trend/views/home/widgets/list_view_item_from_show_list.dart'
    show ListViewItemFromShowList;
import 'package:hagaar_trend/views/home/widgets/search_alart_dialog.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/custom_app_bar.dart';
import '../favourite/favourite_view.dart';
import 'widgets/button_from_search_in_home.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isRent = true;
  bool showList = false;
  bool showLocation = false;
  bool showSearch = false;
  bool showDetailsLocation = false;
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
    return Scaffold(
      appBar:
          showList
              ? customAppBar(
                context,
                title: 'قائمة العقارات',
                onCleckBack: () {
                  setState(() {
                    showList = false;
                  });
                },
              )
              : null,

      body:
          showLocation
              ? Stack(
                alignment: Alignment.topCenter,
                children: [
                  showDetailsLocation
                      ? Image.asset(
                        Assets.imagesTest4,

                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      )
                      : Image.asset(
                        Assets.imagesTest3,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),

                  Positioned(
                    top: 56,

                    child: Container(
                      height: 48,
                      width: 230,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  showLocation = false;
                                });
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "تحديد موقعك",
                              style: AppTextStyles.style16W400(context),
                            ),
                            Spacer(),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 95,
                    right: 20,
                    left: 20,
                    child: Row(
                      spacing: 8,
                      children: [
                        Visibility(
                          visible: !showDetailsLocation,
                          child: MaterialButton(
                            height: 44,
                            minWidth: 100,
                            padding: EdgeInsets.zero,
                            color: AppColors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80),
                            ),
                            onPressed: () {
                              setState(() {
                                showDetailsLocation = true;
                              });
                            },
                            child: Text(
                              "موافق",
                              style: AppTextStyles.style12W700(
                                context,
                              ).copyWith(color: AppColors.white),
                            ),
                          ),
                        ),
                        Spacer(),
                        Visibility(
                          visible: showDetailsLocation,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColors.grey.withAlpha(150),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showDetailsLocation = false;
                                });
                              },
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: AppColors.greyDarker,
                                child: SvgPicture.asset(
                                  Assets.imagesCrosshair,
                                  color: AppColors.orange,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              : Stack(
                alignment: Alignment.topCenter,
                children: [
                  Visibility(
                    visible: showList,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              index == 0
                                  ? const EdgeInsets.only(top: 150)
                                  : index == properties.length - 1
                                  ? const EdgeInsets.only(bottom: 150)
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
                            child: ListViewItemFromShowList(
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
                  Visibility(
                    visible: !showList,
                    child: Image.asset(
                      showSearch ? Assets.imagesTest5 : Assets.imagesTest1,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Visibility(
                    visible: !showSearch,
                    child: Positioned(
                      right: 20,
                      left: 20,
                      top: 16,
                      child: SafeArea(
                        child: Container(
                          height: 64,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                            border:
                                showList
                                    ? Border.all(color: AppColors.border)
                                    : null,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  height: 60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        direction == TextDirection.ltr ? 16 : 0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        direction == TextDirection.ltr ? 16 : 0,
                                      ),
                                      topRight: Radius.circular(
                                        direction == TextDirection.ltr ? 0 : 16,
                                      ),
                                      bottomRight: Radius.circular(
                                        direction == TextDirection.ltr ? 0 : 16,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isRent = false;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Assets.imagesKey,
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        "للبيع",
                                        style: AppTextStyles.style13W400(
                                          context,
                                        ).copyWith(
                                          color:
                                              isRent
                                                  ? AppColors.grey
                                                  : AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 40,
                                color: AppColors.border,
                              ),
                              Expanded(
                                child: MaterialButton(
                                  height: 60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        direction == TextDirection.rtl ? 16 : 0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        direction == TextDirection.rtl ? 16 : 0,
                                      ),
                                      topRight: Radius.circular(
                                        direction == TextDirection.rtl ? 0 : 16,
                                      ),
                                      bottomRight: Radius.circular(
                                        direction == TextDirection.rtl ? 0 : 16,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isRent = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Assets.imagesDoor,
                                        width: 24,
                                        height: 24,
                                      ),
                                      Text(
                                        "للإيجار",
                                        style: AppTextStyles.style13W400(
                                          context,
                                        ).copyWith(
                                          color:
                                              isRent
                                                  ? AppColors.black
                                                  : AppColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !showSearch,
                    child: Positioned(
                      top: 90,
                      child: SafeArea(
                        child: SizedBox(
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              spacing: 8,
                              children: [
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SearchAlertDialog(
                                          onPressedSearch: () {
                                            setState(() {
                                              showSearch = !showSearch;
                                              Navigator.pop(context);
                                            });
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: AppColors.green,
                                    child: SvgPicture.asset(
                                      Assets.imagesSearch,
                                    ),
                                  ),
                                ),
                                SizedBox(),
                                ButtonFromSearchInHome(
                                  isSelect: true,
                                  title: "الكل",
                                  onPressed: () {},
                                ),
                                ButtonFromSearchInHome(
                                  isSelect: false,
                                  title: "فلل وقصور",
                                  onPressed: () {},
                                ),
                                ButtonFromSearchInHome(
                                  isSelect: false,
                                  title: "دور سكني",
                                  onPressed: () {},
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: showSearch,
                    child: Positioned(
                      top: 56,

                      child: Container(
                        height: 48,
                        width: 230,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    showSearch = false;
                                  });
                                },
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                  size: 18,
                                ),
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
                  Visibility(
                    visible: showList,
                    child: Positioned(
                      bottom: 95,
                      right: direction == TextDirection.ltr ? null : 20,
                      left: direction == TextDirection.rtl ? null : 20,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(80),
                        onTap: () {
                          setState(() {
                            showList = false;
                          });
                        },
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: AppColors.greyDarker,
                          child: GestureDetector(
                            child: SvgPicture.asset(Assets.imagesMapTrifold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !showList,
                    child: Positioned(
                      bottom: 95,
                      right: 20,
                      left: 20,
                      child: Row(
                        spacing: 8,
                        children: [
                          MaterialButton(
                            height: 44,
                            minWidth: 100,
                            padding: EdgeInsets.zero,
                            color: AppColors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80),
                            ),
                            onPressed: () {
                              setState(() {
                                showList = true;
                              });
                            },
                            child: Row(
                              children: [
                                SizedBox(width: 6),
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: AppColors.white,
                                    child: SvgPicture.asset(
                                      Assets.imagesTextIndent,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  "عرض القائمة",
                                  style: AppTextStyles.style12W700(
                                    context,
                                  ).copyWith(color: AppColors.white),
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColors.grey.withAlpha(150),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showLocation = true;
                                });
                              },
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: AppColors.greyDarker,
                                child: SvgPicture.asset(Assets.imagesCrosshair),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColors.grey.withAlpha(150),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FavouriteView(),
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: AppColors.greyDarker,
                                child: SvgPicture.asset(Assets.imagesHeart),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
    );
  }
}
