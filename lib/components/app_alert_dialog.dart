import 'package:flutter/material.dart';

import '../constant.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({
    super.key,
    required this.body,
    required this.onPressedOk,
  });

  final Widget body;
  final Function() onPressedOk;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Align(
          alignment:
              direction == TextDirection.rtl
                  ? Alignment.topRight
                  : Alignment.topLeft,

          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
        ),
        titlePadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            body,
            SizedBox(
              height: 16,
            ),
            MaterialButton(
              height: 44,
              minWidth: 100,
              padding: EdgeInsets.zero,
              color: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              onPressed: onPressedOk,
              child: Text(
                "موافق",
                style: AppTextStyles.style12W700(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppAlertDialog2 extends StatelessWidget {
  const AppAlertDialog2({
    super.key,
    required this.title,
    this.body,
    required this.onPressedOk,
  });

  final String title;
  final Widget? body;
  final Function() onPressedOk;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titlePadding: EdgeInsets.zero,
        title: Align(
          alignment:
              direction == TextDirection.rtl
                  ? Alignment.topRight
                  : Alignment.topLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.style20W400(context),
            ),
            body?? SizedBox(),
            MaterialButton(
              height: 44,
              minWidth: 100,
              padding: EdgeInsets.zero,
              color: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              onPressed: onPressedOk,
              child: Text(
                "موافق",
                style: AppTextStyles.style12W700(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class AppShowAlertDialog extends StatelessWidget {
  const AppShowAlertDialog({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titlePadding: EdgeInsets.zero,
        title: Align(
          alignment:
          direction == TextDirection.rtl
              ? Alignment.topRight
              : Alignment.topLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
        ),
        content: body,
      ),
    );
  }
}
// class AdImagePicker extends StatefulWidget {
//   final Function() onPressedOk;
//
//   const AdImagePicker({super.key, required this.onPressedOk});
//
//   @override
//   State<AdImagePicker> createState() => _AdImagePickerState();
// }
//
// class _AdImagePickerState extends State<AdImagePicker> {
//   File? _selectedImage;
//
//   Future<void> _pickImage() async {
//     final pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _selectedImage = File(pickedFile.path);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: AppColors.white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       titlePadding: EdgeInsets.zero,
//       title: Align(
//         alignment: Alignment.topLeft,
//         child: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: const Icon(
//             Icons.close,
//           ),
//         ),
//       ),
//       content: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SizedBox(
//           height: 320,
//           width: 350,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               GestureDetector(
//                 onTap: _pickImage,
//                 child: Container(
//                   width: double.infinity,
//                   height: 240,
//                   decoration: BoxDecoration(
//                     color: Color(0xFFF9F6EE),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: _selectedImage == null
//                       ? Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.image,
//                               size: 50,
//                               color: AppColors.accent,
//                             ),
//                             const SizedBox(height: 40),
//                             RichText(
//                               text: TextSpan(
//                                 text: "قم بإضافة صورة ",
//                                 style:
//                                     AppTextStyles.style20W400(context).copyWith(
//                                   color: AppColors.black,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                     text: "إعلانك",
//                                     style: AppTextStyles.style20W400(context)
//                                         .copyWith(
//                                             color: AppColors.accent,
//                                             decoration:
//                                                 TextDecoration.underline,
//                                             decorationColor: AppColors.accent),
//                                   ),
//                                   TextSpan(text: " هنا"),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         )
//                       : ClipRRect(
//                           borderRadius: BorderRadius.circular(12),
//                           child: Image.file(
//                             _selectedImage!,
//                             fit: BoxFit.cover,
//                             width: double.infinity,
//                             height: 200,
//                           ),
//                         ),
//                 ),
//               ),
//               SizedBox(
//                 height: 24,
//               ),
//               AppButton2(
//                 body: Text(
//                   "موافق",
//                   style: AppTextStyles.style18W700(context)
//                       .copyWith(color: AppColors.white),
//                 ),
//                 onPressed: widget.onPressedOk,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
