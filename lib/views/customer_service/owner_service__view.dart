import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hagaar_trend/components/app_alert_dialog.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/custom_app_bar.dart';
import 'package:hagaar_trend/generated/assets.dart';
import 'package:hagaar_trend/views/customer_service/owner_service_add_view.dart';
import 'package:hagaar_trend/views/customer_service/owner_service_request_view.dart';
import 'package:hagaar_trend/views/customer_service/subscription_view.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_service_item.dart';
import 'package:hagaar_trend/views/customer_service/widgets/owner_top_service_card.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';
import 'advance_requests_view.dart';
import 'agreement_view.dart';
import 'customer_service_view.dart';
import 'owner_service_follow_view.dart';

class OwnerServiceView extends StatelessWidget {
  const OwnerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          MediaQuery.of(context).size.width > 800
              ? customWibAppBar(context)
              : customAppBar(
                context,
                title: "خدمات مالك العقار",
                showBack: false,
              ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width:
                  MediaQuery.of(context).size.width >= 1000
                      ? 1000
                      : MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      MediaQuery.of(context).size.width >= 800
                          ? showDialog(
                            context: context,
                            builder:
                                (context) => AppAlertDialog(
                                  body: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 100),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "مرحبا بك",
                                                style:
                                                    AppTextStyles.style18W800(
                                                      context,
                                                    ).copyWith(
                                                      color: AppColors.green,
                                                    ),
                                              ),
                                              SizedBox(width: 8),
                                              Image.asset(
                                                Assets.imagesHand,
                                                width: 32,
                                                height: 32,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "كيف نقدر نساعدك ؟!",
                                            style: AppTextStyles.style18W800(
                                              context,
                                            ).copyWith(color: AppColors.green),
                                          ),
                                          SizedBox(height: 56),
                                          Text(
                                            "نرد عليك في خلال 24 ساعة !",
                                            style: AppTextStyles.style14W400(
                                              context,
                                            ).copyWith(color: AppColors.green),
                                          ),
                                          SizedBox(
                                            width:
                                                MediaQuery.of(
                                                          context,
                                                        ).size.width >
                                                        800
                                                    ? 400
                                                    : MediaQuery.of(
                                                          context,
                                                        ).size.width -
                                                        48,
                                            child: AppInputTextFormField(
                                              maxLines: 5,
                                              labelText: "أدخل الشكوي",
                                            ),
                                          ),
                                          SizedBox(height: 32),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onPressedOk: () {},
                                ),
                          )
                          : Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => CustomerServiceView(
                                    isSendComplaints: true,
                                  ),
                            ),
                          );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.middleGreen),
                      ),
                      child: Row(
                        spacing: 12,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.imagesHeadset,
                            width: 18,
                            height: 18,
                            color: AppColors.green,
                          ),
                          Text(
                            "أكتب لنا شكوتك",
                            style: AppTextStyles.style14W400(
                              context,
                            ).copyWith(color: AppColors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OwnerTopServiceCard(
                        onTap: () {
                          MediaQuery.of(context).size.width >= 800
                              ? showDialog(
                                context: context,
                                builder:
                                    (context) => AppAlertDialog(
                                      body: Expanded(
                                        child: SingleChildScrollView(
                                          child:
                                              OwnerServiceAddPropertyBodyView(
                                                showBody: "Main Body",
                                              ),
                                        ),
                                      ),
                                      showButton: false,
                                      onPressedOk: () {},
                                    ),
                              )
                              : Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          OwnerServiceAddPropertyView(),
                                ),
                              );
                        },
                        title: 'إضافة عقار',
                        image: Assets.imagesOwnerServiceAdd,
                      ),
                      OwnerTopServiceCard(
                        onTap: () {
                          MediaQuery.of(context).size.width >= 800
                              ? showDialog(
                                context: context,
                                builder:
                                    (context) => AppAlertDialog(
                                      body: OwnerServiceRequestBodyView(),
                                      showButton: false,
                                      onPressedOk: () {},
                                    ),
                              )
                              : Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => OwnerServiceRequestView(),
                                ),
                              );
                        },
                        title: 'طلب شراء أرض',
                        image: Assets.imagesOwnerServiceRecust,
                      ),
                      OwnerTopServiceCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OwnerServiceFollowView(),
                            ),
                          );
                        },
                        title: 'متابعة عقاراتي',
                        image: Assets.imagesOwnerServiceFollow,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width:
                          MediaQuery.of(context).size.width >= 1000
                              ? 500
                              : MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment:
                            MediaQuery.of(context).size.width > 1000
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.start,
                        children: [
                          Text(
                            "خدماتي :",
                            style: AppTextStyles.style16W800(context),
                          ),
                          const SizedBox(height: 16),
                          Visibility(
                            visible: service == 'owner',
                            child: OwnerServiceItem(
                              title: 'الإتفاقات',
                              onTap: () {
                                MediaQuery.of(context).size.width >= 800
                                    ? showDialog(
                                      context: context,
                                      builder:
                                          (context) => AppShowAlertDialog(
                                            body: SizedBox(
                                              width: 500,
                                              height: 600,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "الإتفاقات",
                                                    style: AppTextStyles.style24W800(
                                                      context,
                                                    ).copyWith(
                                                      color: AppColors.green,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  Expanded(
                                                    child: AgreementBodyView(
                                                      items: [
                                                        'شقة',
                                                        'دور سكني',
                                                        'فيلا',
                                                        'عمائر',
                                                        'أراضي',
                                                        'مجمع سكني',
                                                        'صالات عرض',
                                                        'مكاتب',
                                                        'سكن عمال',
                                                        'مستودعات',
                                                        'معارض',
                                                        'مصانع',
                                                        'مزارع',
                                                        'شاليهات',
                                                        'استراحات',
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                    )
                                    : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AgreementView(),
                                      ),
                                    );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Visibility(
                            visible: service != 'owner',
                            child: OwnerServiceItem(
                              title: 'الإشتراكات',
                              onTap: () {
                                MediaQuery.of(context).size.width >= 800
                                    ? showDialog(
                                  context: context,
                                  builder:
                                      (context) => AppShowAlertDialog(
                                    body: SizedBox(
                                      width: 500,
                                      height: 600,
                                      child: Column(
                                        children: [

                                          Expanded(
                                            child: SubscriptionBodyView(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                    :
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SubscriptionView(),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Visibility(
                            visible: service == 'banker',
                            child: OwnerServiceItem(
                              title: 'طلبات السلفة',
                              onTap: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AdvanceRequestsView(),
                                  ),
                                );
                              },
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
    );
  }
}
