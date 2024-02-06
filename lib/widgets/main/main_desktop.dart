import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_images.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  State<MainDesktop> createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;
    final double height = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "${AppString.hi}\n${AppString.iAm} ${AppString.name} \n${AppString.flutterDeveloper}",
                style: AppStyle.mainDesktopBodyStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 270,
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
          SizedBox(
            height: 250,
            width: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(400),
              child: Image.asset(
                AppImage.abhay,
                width: width / 3,
                height: height / 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
