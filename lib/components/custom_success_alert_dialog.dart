
import 'package:flutter/material.dart';
import '../generated/assets.dart';
import 'app_button.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'package:confetti/confetti.dart';

class CustomSuccessAlertDialog extends StatefulWidget {
  final String title;
final Function() onPressedOk;
  const CustomSuccessAlertDialog({
    super.key,
    required this.title, required this.onPressedOk,
  });

  @override
  State<CustomSuccessAlertDialog> createState() =>
      _CustomSuccessAlertDialogState();
}

class _CustomSuccessAlertDialogState extends State<CustomSuccessAlertDialog> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void showConfetti() {
    _confettiController.play();
  }

  @override
  Widget build(BuildContext context) {
    showConfetti();
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      title: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          Assets.imagesSuccess,
          width: 60,
        ),
      ),
      titlePadding: const EdgeInsets.all(16),
      content: SizedBox(
        height: 120,
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: [
                Colors.red,
                Colors.blue,
                Colors.green,
                Colors.yellow,
                Colors.orange
              ],
            ),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: AppTextStyles.style14W400(context),
            ),
            SizedBox(
              height: 32,
            ),
            MaterialButton(
              height: 44,
              minWidth: 100,
              padding: EdgeInsets.zero,
              color: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              onPressed: widget.onPressedOk,
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
