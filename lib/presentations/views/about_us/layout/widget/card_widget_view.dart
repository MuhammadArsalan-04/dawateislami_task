// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../configs/app_colors.dart';
import '../../../../elements/custom_text.dart';
import '../../../../helper/custom_gradient.dart';
import '../../../../helper/size_box.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String address;
  const CardWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              gradient: getGradient(
                  gradientColorsList: AppColors.kLocationGradient,
                  stops: [0.09, 0.4]),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          heightBox(0, 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                softwrap: true,
                text: title,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              heightBox(4, 0),
              SizedBox(
                width: 200,
                child: CustomText(
                  softwrap: true,
                  text: address,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
