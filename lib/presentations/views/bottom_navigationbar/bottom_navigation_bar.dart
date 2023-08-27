import 'package:dawateislam_task/presentations/configs/app_colors.dart';
import 'package:dawateislam_task/presentations/configs/res.dart';
import 'package:dawateislam_task/presentations/elements/custom_background_image_scaffold.dart';
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:dawateislam_task/presentations/helper/custom_gradient.dart';
import 'package:dawateislam_task/presentations/views/about_us/about_us_view.dart';
import 'package:dawateislam_task/presentations/views/contact_us/contact_us_view.dart';
import 'package:dawateislam_task/presentations/views/home/home_view.dart';
import 'package:dawateislam_task/presentations/views/media_screen/media_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> listOfScreens = [
    AboutUsView(),
    MediaView(),
    HomeView(),
    ContactUsView(),
  ];

  List<Map<String, dynamic>> listOfIcons = [
    {"title": "About Us", "icon": CupertinoIcons.person_2},
    {"title": "Media", "icon": Icons.slideshow_sharp},
    {"title": "Home", "icon": CupertinoIcons.home},
    {"title": "Contact", "icon": Icons.contact_support_outlined},
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return CustombackgroundImageScaffold(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundOpacity,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: listOfScreens[index],
          ),
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          height: 70,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...listOfIcons.map((icon) {
                return icon['icon'] == CupertinoIcons.home
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            index = listOfIcons.indexOf(icon);
                          });
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          transform: Matrix4.translationValues(0, -20, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: getGradient(),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                icon['icon'] as IconData,
                                color: Colors.white,
                                size: 30,
                              ),
                              const SizedBox(height: 4),
                              CustomText(
                                text: icon['title'],
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ],
                          ),
                        ),
                      )
                    : Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() {
                            index = listOfIcons.indexOf(icon);
                          }),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                icon['icon'] as IconData,
                                color: Colors.black,
                                size: 36,
                              ),
                              const SizedBox(height: 4),
                              CustomText(
                                text: icon['title'],
                                fontSize: 12,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      );
              }),
              Expanded(
                  child: GestureDetector(
                onTap: () => Share.share(
                    'https://play.google.com/store/apps/details?id=com.dawateislami.apps'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                      size: 36,
                    ),
                    const SizedBox(height: 4),
                    CustomText(
                      text: "Share",
                      fontSize: 12,
                      color: Colors.black,
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}


/*

{"title": "Share", "icon": Icons.share_outlined}

 */