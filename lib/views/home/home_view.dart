import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/generated/assets.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/custom_app_bar.dart';
import 'widgets/button_from_search_in_home.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isRent = true;
  bool showList = false;

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

      body: Stack(
        children: [
          Image.asset(
            Assets.imagesTest1,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 20,
            left: 20,
            top: 16,
            child: SafeArea(
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
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
                                    isRent ? AppColors.grey : AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(width: 1, height: 40, color: AppColors.border),
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
                                    isRent ? AppColors.black : AppColors.grey,
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
          Positioned(
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
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.green,
                          child: SvgPicture.asset(Assets.imagesSearch),
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
                            child: SvgPicture.asset(Assets.imagesTextIndent),
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
