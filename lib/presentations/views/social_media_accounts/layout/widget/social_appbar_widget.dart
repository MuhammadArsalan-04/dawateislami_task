// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dawateislam_task/presentations/configs/res.dart';
import 'package:flutter/material.dart';

import '../../../../configs/app_colors.dart';
import '../../../../elements/custom_text.dart';
import '../../../../helper/custom_gradient.dart';

class SocialAppBarWidgetView extends StatelessWidget {
  const SocialAppBarWidgetView({
    Key? key,
    required this.titleText,
    required this.assetPath,
  }) : super(key: key);

  final String titleText;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 130,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 0.6),
              decoration: BoxDecoration(
                gradient: getGradient(stops: [0.08, 0.7]),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white.withOpacity(0.7),
                        size: 32,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    CustomText(
                      text: "DawateIslami",
                      color: AppColors.kOpacWhite,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.language,
                          color: AppColors.kOpacWhite,
                          size: 32,
                        ))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 110,
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 200,
                          child: CustomText(
                            text: titleText,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 60, child: Image.asset(assetPath))
                      ],
                    ),
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
