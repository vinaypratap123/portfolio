import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_images.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';

class MainMobile extends StatefulWidget {
  const MainMobile({super.key});

  @override
  State<MainMobile> createState() => _MainMobileState();
}

class _MainMobileState extends State<MainMobile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;
    final double height = screenSize.height;
    return Container(
      height: height * 0.7,
      constraints: const BoxConstraints(
        minHeight: 400.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  AppColor.scaffoldBg.withOpacity(0.6),
                  AppColor.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstATop,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image.asset(
                  AppImage.abhay,
                  width: width,
                  height: height / 3,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "${AppString.hi}\n${AppString.iAm} ${AppString.name} \n${AppString.flutterDeveloper}",
            style: AppStyle.mainMobileBodyStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.yellowPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text(
                AppString.hireMe,
                style: AppStyle.buttonStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
