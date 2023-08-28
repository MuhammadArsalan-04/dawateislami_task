import 'package:dawateislam_task/presentations/views/about_us/about_us_view.dart';
import 'package:dawateislam_task/presentations/views/bottom_navigationbar/bottom_navigation_bar.dart';
import 'package:dawateislam_task/presentations/views/contact_us/contact_us_view.dart';
import 'package:dawateislam_task/presentations/views/home/home_view.dart';
import 'package:dawateislam_task/presentations/views/media_screen/media_view.dart';
import 'package:dawateislam_task/presentations/views/social_media_accounts/social_media_accounts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBottomNavigationBar(),
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        SocialMediaAccountsView.routeName: (context) => const SocialMediaAccountsView(),
        ContactUsView.routeName: (context) => const ContactUsView(),
        AboutUsView.routeName: (context) => const AboutUsView(),
        MediaView.routeName: (context) => const MediaView(),
      },
    );
  }
}
