import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';

class NotificationDetailsView extends StatelessWidget {
  const NotificationDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "تطبيق ترند العقار"),
      // body: ListView.separated(
      //   itemCount: registrations.length,
      //   separatorBuilder: (context, index) => Divider(color: Colors.grey[300]),
      //   itemBuilder: (context, index) {
      //     return InkWell(
      //       onTap: (){},
      //
      //       child: ListTile(
      //         leading:Container(
      //           width: 40,
      //           height: 40,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(80),
      //             color: AppColors.white,
      //             border: Border.all(color: AppColors.border, width: 1),
      //           ),
      //           child: Image.asset(Assets.imagesLogo),
      //         ),
      //         title: Text(
      //           "تطبيق زد العقار",
      //           style: AppTextStyles.style12W400(context),
      //         ),
      //         subtitle: Text(
      //           registrations[index],
      //           style: AppTextStyles.style12W400(context).copyWith(
      //               color: AppColors.grey
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
