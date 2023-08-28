import 'package:flutter/material.dart';

import '../../../../configs/app_colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final String hintText;
  CustomTextFieldWidget(
      {required this.controller, required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        cursorColor: AppColors.kPrimaryColor,
        controller: controller,
        decoration: InputDecoration(
          hintText: "$hintText*",
          hintStyle: TextStyle(
            color: AppColors.kHintTextColor,
            fontSize: 18,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.kPrimaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.kPrimaryColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
