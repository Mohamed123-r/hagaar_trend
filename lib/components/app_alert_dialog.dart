// import 'package:flutter/material.dart';
// import '../generated/assets.dart';
// import 'app_button.dart';
// import 'app_text_styles.dart';
//
// class AppAlertDialog extends StatelessWidget {
//   const AppAlertDialog({
//     super.key,
//     required this.title,
//     required this.isSuccess,
//   });
//
//   final String title;
//   final bool isSuccess;
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Colors.white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       title: Align(
//         alignment: Alignment.topCenter,
//         child: Image.asset(
//           isSuccess ? Assets.imagesSuccess : Assets.imagesError,
//           width: 60,
//         ),
//       ),
//       titlePadding: EdgeInsetsDirectional.all(16),
//       content: SizedBox(
//         height: 120,
//         width: 300,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               title,
//               textAlign: TextAlign.center,
//               style: AppTextStyles.style14W400(context),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             AppButton(
//               text: "موافق",
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
