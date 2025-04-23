import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/generated/assets.dart';

import '../main/main_view.dart';
import 'home_owner_details_view.dart';

class HomeOwnerView extends StatelessWidget {
  const HomeOwnerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Image.asset(Assets.imagesHomeBackground),
      body: Column(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  color: AppColors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainView(),
                      ),
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
          SizedBox(
            height: 150,
          ),
          Text(
            "مرحبا بك في",
            style: AppTextStyles.style32W400(
              context,
            ).copyWith(color: Color(0xff878787)),
          ),
          Text(
            "ترند العقار",
            style: AppTextStyles.style56W400(
              context,
            ).copyWith(color: Color(0xff1E1E1E1F)),
          ),
          SizedBox(
            height: 80,
          ),
          MaterialButton(
            height: 44,
            color: AppColors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200)
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeOwnerDetailsView(),
                ),
              );
            },
            child: Text(
              "تحديث حالة عقاراتك",
              style: AppTextStyles.style12W700(
                context,
              ).copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
