import 'package:flutter/material.dart';

import '../configs/res.dart';

class CustombackgroundImageScaffold extends StatelessWidget {
  final Widget? child;
  const CustombackgroundImageScaffold({required this.child,  super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Res.backGroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}