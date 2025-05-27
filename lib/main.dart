import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hagaar_trend/views/auth/auth_view.dart';
import 'package:hagaar_trend/views/customer_service/customer_service_view.dart';
import 'package:hagaar_trend/views/home/home_owner_view.dart';
import 'package:hagaar_trend/views/main/main_view.dart';
import 'package:hagaar_trend/views/notification/notification_view.dart';
import 'package:hagaar_trend/views/profile/profile_view.dart';

import 'components/app_colors.dart';
import 'constant.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Almarai',
        primaryColor: AppColors.black,
        scaffoldBackgroundColor: AppColors.white,
      ),
      home: ProfileView()

      //service == 'owner' ? HomeOwnerView() : MainView(),
    );
  }
}
