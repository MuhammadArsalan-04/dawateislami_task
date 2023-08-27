import 'package:dawateislam_task/presentations/configs/res.dart';
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../helper/launcher.dart';

class MobileAppsGridViewWidget extends StatelessWidget {
  List<Map<String, dynamic>> storeApps = [
    {
      "image": Res.kAlQuran,
      "title": "Al Quran-ul-kareem",
      "url": "com.dawateislami.alquranulkareem",
    },
    {
      "image": Res.kTafseer,
      "title": "Al Quran with Tafseer",
      "url": "com.dawateislami.AlQuran.Translation",
    },
    {
      "image": Res.kFaizanHadees,
      "title": "Faizan e Hadees",
      "url": "com.dawateislami.islam.sunnah.hadees",
    },
    {
      "image": Res.kPrayerTimes,
      "title": "Prayer Times",
      "url": "com.dawateislami.namaz",
    },
    {
      "image": Res.kKalmaDua,
      "title": "Kalma And Dua",
      "url": "com.dawateislami.kidsapplication",
    },
    {
      "image": Res.kNaat,
      "title": "Naat Collection",
      "url": "com.dawateislami.naat_e_kalam",
    },
    {
      "image": Res.kQuranTeacher,
      "title": "Quran Teacher",
      "url": "com.dawateislami.quranteacher",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 3),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            launchPlayStoreAppUrl(
              storeApps[index]['url'],
            );
          },
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(storeApps[index]['image']))),
                  const SizedBox(
                    height: 4,
                  ),
                  CustomText(
                    text: storeApps[index]['title'],
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: storeApps.length,
    );
  }
}
