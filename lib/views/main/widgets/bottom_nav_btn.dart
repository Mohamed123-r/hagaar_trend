import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'size_config.dart';



class BottomNavBTN extends StatelessWidget {
  final Function(int) onPressed;
  final String icon;
  final String title;
  final int index;
  final int currentIndex;

  const BottomNavBTN({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.index,
    required this.currentIndex, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return InkWell(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        height: AppSizes.blockSizeHorizontal * 13,
        width: AppSizes.blockSizeHorizontal * 17,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [

            AnimatedOpacity(
              opacity: (currentIndex == index) ? 1 : 0.2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              child: Column(
                children: [
                  SvgPicture.asset(icon),

                  Text(
                    title,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700,color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
