// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:dawateislam_task/presentations/helper/custom_gradient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dawateislam_task/presentations/configs/app_colors.dart';
import 'package:dawateislam_task/presentations/elements/custom_background_image_scaffold.dart';
import 'package:dawateislam_task/presentations/views/social_media_accounts/layout/widget/social_appbar_widget.dart';

import '../../../configs/res.dart';

class SocialMediaAccountsViewBody extends StatelessWidget {
  const SocialMediaAccountsViewBody({
    Key? key,
    required this.title,
    required this.assetPath,
  }) : super(key: key);

  final String title;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return CustombackgroundImageScaffold(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundOpacity,
        body: Column(
          children: [
            SocialAppBarWidgetView(
              titleText: title,
              assetPath: assetPath,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: getGradient(stops: [0.09, 0.6])),
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: ClipOval(child: Image.asset(Res.kNaat)),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CustomText(
                        text: "Dawateislami",
                        color: AppColors.kOpacWhite,
                        fontSize: 16,
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
