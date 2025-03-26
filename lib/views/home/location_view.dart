import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';

import '../../constant.dart';
import '../../generated/assets.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar: customAppBar(context, title: "موقع العقار"),
        body: Image.asset(
          Assets.imagesTest3,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
