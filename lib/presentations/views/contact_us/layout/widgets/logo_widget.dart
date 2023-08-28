import 'package:flutter/material.dart';

import '../../../../configs/res.dart';

class LogoWidgetView extends StatelessWidget {
  const LogoWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            height: 120,
            width: 120,
            child: Image.asset(Res.kLogo),
          ),
        );
  }
}