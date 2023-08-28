import 'package:carousel_slider/carousel_slider.dart';
import 'package:dawateislam_task/presentations/configs/res.dart';
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:dawateislam_task/presentations/helper/size_box.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MediaScreenViewBody extends StatefulWidget {
  MediaScreenViewBody({super.key});

  @override
  State<MediaScreenViewBody> createState() => _MediaScreenViewBodyState();
}

class _MediaScreenViewBodyState extends State<MediaScreenViewBody> {
  List<String> listDarbarImages = [Res.kimage1, Res.kimage2, Res.kimage3];

  bool isPlaying = false;

  List<String> youtubeUrls = [
    "https://youtu.be/NM4NSfmMfRc",
    "https://youtu.be/hcrwBr0RRdw",
    "https://youtu.be/XHOmBV4js_E",
  ];

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId:
        (YoutubePlayer.convertUrlToId("https://youtu.be/YMx8Bbev6T4")!),
    flags: YoutubePlayerFlags(
      // autoPlay: true,
      autoPlay: false,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomText(
                text: "Images",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            heightBox(26),
            CarouselSlider.builder(
              itemCount: listDarbarImages.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      listDarbarImages[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlayAnimationDuration: Duration(milliseconds: 200),
                autoPlay: true,
                height: 180,
              ),
            ),
            heightBox(26),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomText(
                text: "Videos",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            heightBox(26),

            CarouselSlider.builder(
              itemCount: youtubeUrls.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: 260,
                  child: YoutubePlayerBuilder(
                    builder: (context, player) => player,
                    player: YoutubePlayer(
                      controller: YoutubePlayerController(
                          flags: YoutubePlayerFlags(
                            autoPlay: false,
                          ),
                          initialVideoId: YoutubePlayer.convertUrlToId(
                              youtubeUrls[index])!),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                      progressColors: ProgressBarColors(
                        playedColor: Colors.red,
                        handleColor: Colors.red,
                      ),
                      // onReady: () {
                      //   _controller.load(youtubeUrls[realIndex]);
                      //   _controller.play();
                      // },
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 180,
              ),
            ),

            // YoutubePlayerBuilder(
            //   builder: (context, player) => player,
            //   player: YoutubePlayer(
            //     controller: _controller,
            //     showVideoProgressIndicator: true,

            //     progressIndicatorColor: Colors.amber,
            //     progressColors: ProgressBarColors(
            //       playedColor: Colors.red,
            //       handleColor: Colors.red,
            //     ),
            //     // onReady: () => _controller.addListener(listener),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
