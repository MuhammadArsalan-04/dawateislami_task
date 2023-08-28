import 'package:dawateislam_task/presentations/configs/app_colors.dart';
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:dawateislam_task/presentations/elements/logo_widget.dart';
import 'package:dawateislam_task/presentations/helper/custom_gradient.dart';
import 'package:dawateislam_task/presentations/helper/size_box.dart';
import 'package:dawateislam_task/presentations/views/about_us/layout/widget/card_widget_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../helper/launc_url_method.dart';

class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LogoWidgetView(),
            heightBox(20, 0.0),
            CardWidget(
                icon: Icons.location_on,
                title: "Head office address:",
                address:
                    "3556 Hartford Way Vlg, Mount Pleasant, SC, 29466, Australia."),
            heightBox(
              10,
            ),
            CardWidget(
                icon: Icons.call,
                title: "Call for help:",
                address: "(734) 697-2907\n(843) 971-1906"),
            heightBox(10),
            CardWidget(
                icon: Icons.email_rounded,
                title: "Mail for information:",
                address: "noreply@envato.com\nnoreply@consultio.com"),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          gradient: getGradient(
              gradientColorsList: AppColors.kLocationGradient,
              stops: [0.09, 0.4]),
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          onPressed: () {
            urlLauncherMethod("+92 1234 567890");
          },
          icon: Icon(
            Icons.call,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
