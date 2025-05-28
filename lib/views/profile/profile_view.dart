import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/components/custom_success_alert_dialog.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:hagaar_trend/views/auth/auth_view.dart';
import 'package:hagaar_trend/views/profile/edit_profile_view.dart';
import 'package:hagaar_trend/views/profile/widgets/edit_data_button.dart';
import 'package:hagaar_trend/views/profile/widgets/profile_item.dart';
import 'package:hagaar_trend/views/profile/widgets/switch_profile_button.dart';

import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
import '../../generated/assets.dart';
import '../home/item_details_view.dart';
import '../home/widgets/list_view_item_from_show_list.dart';
import '../main/widgets/size_config.dart';
import 'change_location.dart';
import 'change_password_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
      "name": "شقة فندقية",
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

  bool showMyItems = true;

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: direction,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              SizedBox(height: 8),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  screenWidth > 800
                      ? Row(
                        children: [
                          Image.asset(
                            Assets.imagesShapes4,
                            height: screenWidth * 0.07,
                          ),
                          Spacer(),
                          Image.asset(
                            Assets.imagesShapes5,
                            height: screenWidth * 0.07,
                          ),
                        ],
                      )
                      : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Assets.imagesShap2,
                            width: screenWidth * 0.3,
                          ),
                          Image.asset(
                            Assets.imagesShap1,
                            width: screenWidth * 0.3,
                          ),
                        ],
                      ),
                  Visibility(
                    visible: screenWidth < 800,
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.16),
                      child: DataOfProfileView(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (screenWidth < 800)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SwitchProfileButton(
                      title: "صفقاتي",
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
                      title: 'تعديل بياناتي',
                      image: Assets.imagesUser,
                      isBlack: !showMyItems,
                      onPressed: () {
                        setState(() {
                          showMyItems = false;
                        });
                      },
                    ),
                  ],
                ),
              if (screenWidth < 800 && !showMyItems)
                SingleChildScrollView(child: ButtonsProfileView()),
              if (screenWidth < 800 && showMyItems)
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            index == properties.length - 1
                                ? EdgeInsets.only(bottom: screenWidth * 0.25)
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
                          child: ProfileItem(
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
                    separatorBuilder: (context, index) => SizedBox(height: 16),
                    itemCount: properties.length,
                  ),
                ),
              if (screenWidth > 800)
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: screenWidth > 1200 ? 400 : screenWidth * 0.3,
                        child: Column(
                          children: [DataOfProfileView(), ButtonsProfileView()],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: GridView.builder(
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => ItemDetailsView(
                                          showFavourite: true,
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
                            );
                          },
                          itemCount: properties.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    screenWidth <= 1000
                                        ? 2
                                        : screenWidth <= 1200
                                        ? 3
                                        : 3,
                                childAspectRatio:
                                    screenWidth > 1200 ? 1.2 : 1.0,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class DataOfProfileView extends StatelessWidget {
  const DataOfProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AuthView()),
            );
          },
          child: CircleAvatar(
            radius: screenWidth > 800 ? 100 : 85,
            backgroundColor: AppColors.grey,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",
                width: screenWidth > 800 ? 200 : 170,
                height: screenWidth > 800 ? 200 : 170,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text("محمد علي عبد القادر", style: AppTextStyles.style16W800(context)),
        const SizedBox(height: 8),
        Text("+20 0109282735242", style: AppTextStyles.style12W400(context)),
      ],
    );
  }
}

class ButtonsProfileView extends StatefulWidget {
  const ButtonsProfileView({super.key});

  @override
  State<ButtonsProfileView> createState() => _ButtonsProfileViewState();
}

class _ButtonsProfileViewState extends State<ButtonsProfileView> {
  final TextEditingController nameController = TextEditingController(
    text: "محمد علي",
  );
  final TextEditingController phoneController = TextEditingController(
    text: "+20 0108376546221",
  );
  final TextEditingController emailController = TextEditingController(
    text: "kh@led5367gyedv@gmail.com",
  );
  final TextEditingController locationController = TextEditingController(
    text: "السعودية - الرياض - حي الشارقة",
  );
  final TextEditingController membershipController = TextEditingController(
    text: "باحتر عن عقار",
  );

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    locationController.dispose();
    membershipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding = screenWidth > 800 ? 40 : 32;
    double dialogWidth =
        screenWidth > 800 ? screenWidth * 0.4 : screenWidth * 0.9;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          EditDataButton(
            title: 'تحديث معلوماتي',
            onPressed: () {
              if (screenWidth > 800) {
                showDialog(
                  context: context,
                  builder:
                      (context) => AppAlertDialog2(
                        title: "تحديث معلوماتي",
                        body: Directionality(
                          textDirection: direction,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: padding,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 24, width: dialogWidth),
                                  Stack(
                                    children: [
                                      Container(
                                        width: dialogWidth * 0.4,
                                        height: dialogWidth * 0.4,
                                        decoration: BoxDecoration(
                                          color: Color(0xffEEEEEE),
                                          borderRadius: BorderRadius.circular(
                                            240,
                                          ),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            Assets.imagesUser,
                                            color: AppColors.black,
                                            width: dialogWidth * 0.06,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 4,
                                        right:
                                            direction == TextDirection.rtl
                                                ? 12
                                                : null,
                                        left:
                                            direction == TextDirection.ltr
                                                ? 12
                                                : null,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.circular(
                                              240,
                                            ),
                                            border: Border.all(
                                              width: 1,
                                              color: AppColors.border,
                                            ),
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              Assets.imagesCamera,
                                              width: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  AppInputTextFormField(
                                    title: "الاسم",
                                    controller: nameController,
                                    keyboardType: TextInputType.name,
                                  ),
                                  AppInputTextFormField(
                                    title: "رقم الهاتف",
                                    controller: phoneController,
                                    keyboardType: TextInputType.phone,
                                  ),
                                  AppInputTextFormField(
                                    title: "العنوان",
                                    controller: locationController,
                                    keyboardType: TextInputType.name,
                                    suffixIcon: SizedBox(
                                      width: 100,
                                      child: Center(
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder:
                                                    (_) => ChangeLocation(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "تغير الموقع",
                                            style: AppTextStyles.style12W400(
                                              context,
                                            ).copyWith(
                                              color: AppColors.green,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: AppColors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressedOk: () {},
                      ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => EditProfileView()),
                );
              }
            },
          ),
          EditDataButton(
            title: 'تغير كلمة المرور',
            onPressed: () {
              if (screenWidth > 800) {
                showDialog(
                  context: context,
                  builder:
                      (context) => AppAlertDialog2(
                        title: "إعادة تعيين كلمة المرور",
                        body: Directionality(
                          textDirection: direction,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: padding,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 24, width: dialogWidth),
                                  PasswordTextForm(
                                    title: 'كلمة المرور الحالية',
                                  ),
                                  PasswordTextForm(
                                    title: 'كلمة المرور الجديدة',
                                  ),
                                  PasswordTextForm(
                                    title: 'تأكيد كلمة المرور الجديدة',
                                  ),
                                  const SizedBox(height: 24),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressedOk: () {},
                      ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ChangePasswordView()),
                );
              }
            },
          ),
          EditDataButton(
            title: 'تسجيل الخروج',
            isDisabled: true,
            onPressed: () {
              showDialog(
                context: context,
                builder:
                    (_) => AppAlertDialog2(
                      title: "هل تريد تسجيل الخروج من حسابك ؟!",
                      onPressedOk: () {
                        showDialog(
                          context: context,
                          builder:
                              (_) => CustomSuccessAlertDialog(
                                title: "تم تسجيل الخروج بنجاح",
                                onPressedOk: () {},
                              ),
                        );
                      },
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
