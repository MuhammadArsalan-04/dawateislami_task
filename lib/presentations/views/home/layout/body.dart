import 'dart:io';

import 'package:dawateislam_task/presentations/configs/res.dart';
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:dawateislam_task/presentations/views/home/layout/widgets/banners_view.dart';
import 'package:dawateislam_task/presentations/views/home/layout/widgets/mobile_apps_gridview.dart';
import 'package:dawateislam_task/presentations/views/home/layout/widgets/social_platforms.dart';
import 'package:flutter/material.dart';

import 'widgets/platforms.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BannerViewWidget(),
          const SizedBox(
            height: 12,
          ),
          CustomText(
            text: "Social Media Accounts",
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 12,
          ),
          const Platforms(),
          const SizedBox(
            height: 12,
          ),
          CustomText(
            text: "Mobile Applications",
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 12,
          ),
          MobileAppsGridViewWidget(),
        ],
      ),
    );
  }
}
