import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/constant.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../components/app_alert_dialog.dart';
import '../../components/custom_app_bar.dart';
import '../../generated/assets.dart';
import 'advance_requests_details_view.dart';

class AdvanceRequestsView extends StatelessWidget {
   AdvanceRequestsView({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar:   MediaQuery.of(context).size.width > 800
            ?
        AppBar(
          leadingWidth: 0,
          elevation: 0,
          toolbarHeight: 100,
          leading: SizedBox(),
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
          title: Directionality(
            textDirection: direction,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.asset(Assets.imagesShapes4, height: 105),
                    Spacer(),
                    Image.asset(Assets.imagesShapes5, height: 105),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    spacing: 16,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(80),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.middleGreen,
                          ),
                          child: GestureDetector(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "طلبات السلفة",
                        style: AppTextStyles.style20W400(context),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
            :customAppBar(context, title: "طلبات السلفة", showBack: true),
        body: AdvanceRequestsBodyView(),
      ),
    );
  }
}

class AdvanceRequestsBodyView extends StatelessWidget {
   AdvanceRequestsBodyView({
    super.key,
  });
  final List<Map<String, String>> registrations = List.generate(
    12,
        (index) => {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",

      "name": "محمد العتيبي",
      "address": "الرياض، المملكة العربية السعودية",
    },
  );
  @override
  Widget build(BuildContext context) {
    return    ListView.separated(
      itemCount: registrations.length,
      separatorBuilder:
          (context, index) => Divider(color: Colors.grey[300]),
      itemBuilder: (context, index) {
        final item = registrations[index];
        return InkWell(
          onTap: () {

            MediaQuery.of(context).size.width > 800
                ? showDialog(
              context: context,
              builder: (_) => AppShowAlertDialog(
                body:AdvanceRequestsDetailsBodyView() ,
              ),
            )
                :

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdvanceRequestsDetailsView()),
            );
          },
          child: ListTile(
            leading: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: AppColors.white,
                border: Border.all(color: AppColors.border, width: 1),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network(item["image"]!, fit: BoxFit.cover),
            ),
            title: Text(
              item["name"]!,
              style: AppTextStyles.style12W400(context),
            ),
            subtitle: Text(
              item["address"]!,
              style: AppTextStyles.style12W400(
                context,
              ).copyWith(color: AppColors.grey),
            ),
          ),
        );
      },
    ) ;
  }
}
