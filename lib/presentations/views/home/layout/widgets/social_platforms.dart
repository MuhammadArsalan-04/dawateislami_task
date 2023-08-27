// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:flutter/material.dart';

class SocialPlatFormsWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  const SocialPlatFormsWidget({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40, width: 40, child: Image.asset(imagePath)),
        const SizedBox(
          height: 4,
        ),
        CustomText(text: text)
      ],
    );
  }
}
