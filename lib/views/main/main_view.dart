import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/views/customer_service/owner_service__view.dart';
import 'package:hagaar_trend/views/home/home_view.dart';
import 'package:hagaar_trend/views/notification/notification_view.dart';
import '../../generated/assets.dart';
import '../comapnys/comapnys_view.dart';
import '../customer_service/customer_service_view.dart';
import '../profile/profile_view.dart';
import 'widgets/bottom_nav_btn.dart';
import 'widgets/clipper.dart';
import 'widgets/size_config.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Scaffold(
      body: Directionality(
        textDirection: direction,
        child: Stack(
          alignment: MediaQuery.of(context).size.width >= 800
              ? Alignment.topCenter
              : Alignment.bottomCenter,
          children: [
            PageView(
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeView(),
                ProfileView(),
                NotificationView(),
                service == 'customer' ? CustomerServiceView() : OwnerServiceView(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width >= 800 ? 24 : 0,
                bottom: MediaQuery.of(context).size.width >= 800 ? 0 : 16,
                right: MediaQuery.of(context).size.width >= 800
                    ? MediaQuery.of(context).size.width * 0.12 // نسبة 12%
                    : 16,
                left: MediaQuery.of(context).size.width >= 800
                    ? MediaQuery.of(context).size.width * 0.12
                    : 16,
              ),
              child: bottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav() {
    double screenWidth = MediaQuery.of(context).size.width;
    double navWidth = screenWidth >= 800 ? screenWidth * 0.76 : screenWidth - 32; // 76% من الشاشة الكبيرة
    double itemWidth = navWidth / 4;
    return Directionality(
      textDirection: direction,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
        elevation: 6,
        child: Container(
          height: screenWidth >= 800 ? 56 : 75,
          width: double.infinity,
          decoration: BoxDecoration(
            color: screenWidth >= 800 ? Color(0xffF9FAFC) : AppColors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: screenWidth >= 800,
                child: Positioned(
                  left: 16,
                  child: Image.asset(Assets.imagesLogo, height: 56),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BottomNavBTN(
                    title: "الرئيسية",
                    onPressed: (val) {
                      animateToPage(val);
                    },
                    icon: Assets.imagesHouseLine,
                    currentIndex: _currentIndex,
                    index: 0,
                  ),
                  BottomNavBTN(
                    title: "حسابي",
                    onPressed: (val) {
                      animateToPage(val);
                    },
                    icon: Assets.imagesUser,
                    currentIndex: _currentIndex,
                    index: 1,
                  ),
                  BottomNavBTN(
                    title: "الإشعارات",
                    onPressed: (val) {
                      animateToPage(val);
                    },
                    icon: Assets.imagesBell,
                    currentIndex: _currentIndex,
                    index: 2,
                  ),
                  BottomNavBTN(
                    title: "الخدمات",
                    onPressed: (val) {
                      animateToPage(val);
                    },
                    icon: Assets.imagesHeadset,
                    currentIndex: _currentIndex,
                    index: 3,
                  ),
                ],
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.decelerate,
                top: 0,
                left: animatedPositionedLeftValue(_currentIndex, navWidth),
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      width: itemWidth * 0.6, // 60% من عرض العنصر
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

double animatedPositionedLeftValue(int currentIndex, double navWidth) {
  double itemWidth = navWidth / 4; // عرض كل عنصر
  double indicatorWidth = itemWidth * 0.6; // عرض المؤشر (60% من العنصر)
  double offset = (itemWidth - indicatorWidth) / 2; // لتوسيط المؤشر داخل العنصر

  switch (currentIndex) {
    case 0:
      return direction == TextDirection.ltr
          ? offset // بداية الصفحة الأولى من اليسار
          : navWidth - itemWidth + offset; // بداية الصفحة الأولى من اليمين
    case 1:
      return direction == TextDirection.ltr
          ? itemWidth + offset // الصفحة الثانية
          : navWidth - (itemWidth * 2) + offset;
    case 2:
      return direction == TextDirection.ltr
          ? (itemWidth * 2) + offset // الصفحة الثالثة
          : navWidth - (itemWidth * 3) + offset;
    case 3:
      return direction == TextDirection.ltr
          ? (itemWidth * 3) + offset // الصفحة الرابعة
          : offset;
    default:
      return direction == TextDirection.ltr
          ? offset
          : navWidth - itemWidth + offset;
  }
}