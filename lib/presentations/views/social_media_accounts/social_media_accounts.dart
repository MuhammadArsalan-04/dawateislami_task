import 'package:dawateislam_task/presentations/views/social_media_accounts/layout/body.dart';
import 'package:flutter/material.dart';

class SocialMediaAccountsView extends StatelessWidget {
  const SocialMediaAccountsView({super.key});

  static const String routeName = '/social-media-screens';

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return SocialMediaAccountsViewBody(
      assetPath: args["path"],
      title: args['title'],
    );
  }
}
