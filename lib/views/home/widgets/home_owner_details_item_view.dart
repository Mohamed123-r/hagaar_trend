import 'package:flutter/material.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../../constant.dart';

class HomeOwnerDetailsItemView extends StatelessWidget {
  const HomeOwnerDetailsItemView({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.location,
    required this.type,
    required this.area,
    required this.status,
    required this.commission,
    this.isFollow = false,
  });

  final bool isFollow;

  final String image;
  final String name;
  final String price;
  final String location;
  final String type;
  final String area;
  final String status;
  final String commission;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          height: isFollow ? 185 : 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.white,
            border: Border.all(color: AppColors.border, width: 1),
          ),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: AppTextStyles.style13W400(context),
                            ),
                            Text(
                              location,
                              style: AppTextStyles.style13W400(context),
                            ),

                            Row(
                              children: [
                                Text(
                                  "السعر :  ",
                                  style: AppTextStyles.style13W400(context),
                                ),
                                Text(
                                  price,
                                  style: AppTextStyles.style13W400(
                                    context,
                                  ).copyWith(color: AppColors.green),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "عدد الزيارات :",
                                  style: AppTextStyles.style13W400(
                                    context,
                                  ).copyWith(color: AppColors.green),
                                ),

                                Text(
                                  "232",
                                  style: AppTextStyles.style13W400(
                                    context,
                                  ).copyWith(color: AppColors.green),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "عدد الإستفسارات:",
                                  style: AppTextStyles.style13W400(
                                    context,
                                  ).copyWith(color: AppColors.green),
                                ),

                                Text(
                                  "232",
                                  style: AppTextStyles.style13W400(
                                    context,
                                  ).copyWith(color: AppColors.green),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "عدد طلبات الشراء :",
                                  style: AppTextStyles.style13W400(
                                    context,
                                  ).copyWith(color: AppColors.green),
                                ),

                                Text(
                                  "232",
                                  style: AppTextStyles.style13W400(
                                    context,
                                  ).copyWith(color: AppColors.green),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft:
                            isFollow ? Radius.circular(8) : Radius.circular(0),
                      ),
                      child: AspectRatio(
                        aspectRatio: 0.80,
                        child: Image.network(image, fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: !isFollow,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    color: Color(0xffeeeeee),
                  ),
                  child: StatusSelector(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum StatusOption { sold, reserved, available }

class StatusSelector extends StatefulWidget {
  const StatusSelector({super.key});

  @override
  State<StatusSelector> createState() => _StatusSelectorState();
}

class _StatusSelectorState extends State<StatusSelector> {
  StatusOption? selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCustomRadio("مباع", StatusOption.sold),
          buildCustomRadio("محجوز", StatusOption.reserved),
          buildCustomRadio("متاح", StatusOption.available),
        ],
      ),
    );
  }

  Widget buildCustomRadio(String label, StatusOption value) {
    bool isSelected = selectedStatus == value;

    return InkWell(
      onTap: () {
        setState(() {
          selectedStatus = value;
        });
      },
      child: Row(
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.green : Colors.transparent,
              border: Border.all(color: AppColors.green, width: 1.5),
              borderRadius: BorderRadius.circular(4),
            ),
            child:
                isSelected
                    ? Icon(Icons.check, color: Colors.white, size: 16)
                    : null,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: AppTextStyles.style14W400(
              context,
            ).copyWith(color: AppColors.green),
          ),
        ],
      ),
    );
  }
}
