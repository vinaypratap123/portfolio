import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      width: double.infinity,
      color: AppColor.scaffoldBg,
      alignment: Alignment.center,
      child: const Text(
        AppString.footerText,
        style: AppStyle.footerTextStyle,
      ),
    );
  }
}
