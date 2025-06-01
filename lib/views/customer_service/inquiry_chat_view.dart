import 'package:flutter/material.dart';
import 'package:hagaar_trend/components/app_colors.dart';
import 'package:hagaar_trend/components/app_form_filed.dart';
import 'package:hagaar_trend/components/app_text_styles.dart';
import 'package:hagaar_trend/constant.dart';

import '../../components/custom_app_bar.dart';
import '../../generated/assets.dart';

class InquiryChatView extends StatelessWidget {
  const InquiryChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        appBar:
        MediaQuery.of(context).size.width > 800
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
                        "إستفسارات العملاء",
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
            :customAppBar(
          context,
          title: "إستفسارات العملاء",
          showBack: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  _MessageBubble(
                    message:
                        "أريد عرض وصيانة النخبة بنفسي قبل الشراء إن أمكن ذلك.\nوشكرًا لوقتك يا فندم",
                    isFromUser: true,
                    avatarUrl: "https://i.pravatar.cc/300?img=3",
                  ),
                  _MessageBubble(
                    message: "تمام نفعل بذلك وسيتم التواصل معك لتحديد التفاصيل",
                    isFromUser: false,
                    avatarUrl: "https://i.pravatar.cc/300?img=5",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: AppInputTextFormField(
                labelText: "أرسل ردا",
                suffixIcon: Icon(Icons.send, color: AppColors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final String message;
  final bool isFromUser;
  final String avatarUrl;

  const _MessageBubble({
    required this.message,
    required this.isFromUser,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = isFromUser ? Colors.white : const Color(0xffC3E5CF);
    final alignment =
        isFromUser ? CrossAxisAlignment.end : CrossAxisAlignment.start;

    return Column(
      crossAxisAlignment: alignment,
      children: [
        Row(
          mainAxisAlignment:
              isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isFromUser) _avatar(avatarUrl) else const SizedBox(width: 40),
            const SizedBox(width: 8),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.border),
                ),
                child: Text(message, style: const TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(width: 8),
            if (isFromUser) _avatar(avatarUrl) else const SizedBox(width: 40),
          ],
        ),
      ],
    );
  }

  Widget _avatar(String url) {
    return CircleAvatar(radius: 18, backgroundImage: NetworkImage(url));
  }
}
