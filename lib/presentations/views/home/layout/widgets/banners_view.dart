import 'package:dawateislam_task/presentations/configs/res.dart';
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerViewWidget extends StatelessWidget {
  BannerViewWidget({super.key});

  PageController _pageController = PageController();

  final List<String> bannerImageUrl = [
    "https://i.pinimg.com/564x/fa/86/90/fa8690fd1d728ae410eb0dbe23a8e593.jpg",
    "https://i.pinimg.com/564x/f2/80/57/f28057cad30886471709ad2917e6d558.jpg",
    "https://i.pinimg.com/564x/63/e3/7d/63e37d8663c1854bea05ffaf2bdaef6b.jpg",
    "https://i.pinimg.com/564x/8d/58/7d/8d587dd3a58950aabbc17706f95743e5.jpg",
    "https://i.pinimg.com/736x/ff/83/90/ff8390918dee21eb60285f82cec8761d.jpg",
    "https://i.pinimg.com/564x/2a/1f/80/2a1f80448d225bf904d686948b6c7098.jpg",
    "https://www.shutterstock.com/shutterstock/photos/2199120739/display_1500/stock-vector--islamic-banner-with-green-background-and-islamic-pattern-decoration-2199120739.jpg",
    "https://www.shutterstock.com/shutterstock/photos/2264302685/display_1500/stock-vector-arabic-lantern-of-ramadan-celebration-background-illustration-2264302685.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      width: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              itemCount: bannerImageUrl.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage(
                    placeholder: const AssetImage(Res.imagePlaceholder),
                    image: NetworkImage(
                      bannerImageUrl[index],
                    ),
                    imageErrorBuilder: (context, error, stackTrace) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.image_not_supported_outlined,
                          size: 40,
                        ),
                        const SizedBox(height: 6),
                        CustomText(
                          text: "Unable to load image",
                          color: Colors.black,
                        ),
                      ],
                    ),
                    fit: BoxFit.cover,
                  ),
                );
              }),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: bannerImageUrl.length > 7 ? 7 : bannerImageUrl.length,
                effect: WormEffect(
                  dotColor: Colors.grey.shade300,
                  activeDotColor: Colors.yellowAccent,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
