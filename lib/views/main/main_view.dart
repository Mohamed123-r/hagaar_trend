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
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

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
      //appBar: customAppBar(context),
      body: Directionality(
        textDirection: direction,
        child: Stack(
          alignment: Alignment.bottomCenter,
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
                service == 'customer'
                    ? CustomerServiceView()
                    : OwnerServiceView(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
              child: bottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav() {
    return Directionality(
      textDirection: direction,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
        elevation: 6,
        child: Container(
          height: AppSizes.blockSizeHorizontal * 18,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: AppSizes.blockSizeHorizontal * 3,
                right: AppSizes.blockSizeHorizontal * 3,
                child: Row(
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
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.decelerate,
                top: 0,
                left: animatedPositionedLeftValue(_currentIndex),
                child: Column(
                  children: [
                    Container(
                      height: AppSizes.blockSizeHorizontal * 1,
                      width: AppSizes.blockSizeHorizontal * 12,
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

double animatedPositionedLeftValue(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return direction == TextDirection.ltr
          ? AppSizes.blockSizeHorizontal * 7.5
          : AppSizes.blockSizeHorizontal * 72;
    case 1:
      return direction == TextDirection.ltr
          ? AppSizes.blockSizeHorizontal * 30
          : AppSizes.blockSizeHorizontal * 51;
    case 2:
      return direction == TextDirection.ltr
          ? AppSizes.blockSizeHorizontal * 51
          : AppSizes.blockSizeHorizontal * 30;

    default:
      return direction == TextDirection.ltr
          ? AppSizes.blockSizeHorizontal * 72
          : AppSizes.blockSizeHorizontal * 7.5;
  }
}
