import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';
import 'package:portfolio/app/constants.dart';

class HeaderDesktop extends StatefulWidget {
  final Function(int) onNavbarItemTap;
  const HeaderDesktop({super.key, required this.onNavbarItemTap});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            AppColor.bgLight1,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                AppString.name,
                style: AppStyle.navBarNameStyle,
              ),
            ),
          ),
          const Spacer(),
          for (int i = 0; i < Constants.navbarItem.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  widget.onNavbarItemTap(i);
                },
                child: Text(
                  Constants.navbarItem[i],
                  style: AppStyle.navBarItemStyle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
