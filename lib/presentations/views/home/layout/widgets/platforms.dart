import 'package:dawateislam_task/presentations/helper/navigation_helper.dart';
import 'package:dawateislam_task/presentations/views/home/layout/widgets/social_platforms.dart';
import 'package:dawateislam_task/presentations/views/social_media_accounts/social_media_accounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../configs/res.dart';

class Platforms extends StatelessWidget {
  const Platforms({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => NavigationHelper.pushNamedRoute(
                context, SocialMediaAccountsView.routeName, {
              "title": "Official Facebook Accounts in Urdu",
              "path": Res.kFacebook,
            }),
            child: const SocialPlatFormsWidget(
                imagePath: Res.kFacebook, text: "Facebook"),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => NavigationHelper.pushNamedRoute(
                context, SocialMediaAccountsView.routeName, {
              "title": "Official Youtube Accounts in Urdu",
              "path": Res.kYoutube,
            }),
            child: const SocialPlatFormsWidget(
                imagePath: Res.kYoutube, text: "Youtube"),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => NavigationHelper.pushNamedRoute(
                context, SocialMediaAccountsView.routeName, {
              "title": "Official Twitter Accounts in Urdu",
              "path": Res.kTwitter,
            }),
            child: const SocialPlatFormsWidget(
                imagePath: Res.kTwitter, text: "Twitter"),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => NavigationHelper.pushNamedRoute(
                context, SocialMediaAccountsView.routeName, {
              "title": "Official instagram Accounts in Urdu",
              "path": Res.kInsta,
            }),
            child: const SocialPlatFormsWidget(
                imagePath: Res.kInsta, text: "instagram"),
          ),
        )
      ],
    );
  }
}
