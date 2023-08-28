import 'package:dawateislam_task/presentations/configs/app_colors.dart';
import 'package:dawateislam_task/presentations/configs/res.dart';
import 'package:dawateislam_task/presentations/elements/custom_background_image_scaffold.dart';
import 'package:dawateislam_task/presentations/elements/custom_text.dart';
import 'package:dawateislam_task/presentations/views/contact_us/layout/widgets/custom_textfield.dart';
import 'package:dawateislam_task/presentations/elements/logo_widget.dart';
import 'package:flutter/material.dart';

class ContactUsViewBody extends StatelessWidget {
  ContactUsViewBody({super.key});

  TextEditingController _nameController = TextEditingController();

  Widget heightBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoWidgetView(),
          heightBox(12),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: CustomText(
              text:
                  "Make a free consultation with our expert team to solve your prolems",
              fontSize: 26,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
            ),
          ),
          heightBox(12),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  heightBox(12),
                  CustomText(
                    text: "Contact Us",
                    color: AppColors.kPrimaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  heightBox(30),
                  CustomTextFieldWidget(
                      controller: _nameController, hintText: "Your Name"),
                  CustomTextFieldWidget(
                      controller: _nameController, hintText: "Your Mail"),
                  CustomTextFieldWidget(
                      controller: _nameController, hintText: "Phone"),
                  heightBox(20),
                  ElevatedButton(
                    onPressed: () {},
                    child: CustomText(
                      text: "Send Message",
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.kPrimaryColor,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.5, 50),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
