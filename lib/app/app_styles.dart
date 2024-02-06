import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';

class AppStyle {
  static const navBarItemStyle = TextStyle(
    color: AppColor.whitePrimary,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );
  static const navBarNameStyle = TextStyle(
    color: AppColor.yellowSecondary,
    fontSize: 22.0,
    fontWeight: FontWeight.w900,
  );
  static const mainDesktopBodyStyle = TextStyle(
    color: AppColor.whitePrimary,
    height: 1.5,
    fontSize: 30.0,
    fontWeight: FontWeight.w700,
  );
  static const mainMobileBodyStyle = TextStyle(
    color: AppColor.whitePrimary,
    height: 1.5,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );
  static const buttonStyle = TextStyle(
    color: AppColor.whiteSecondary,
    wordSpacing: 2.0,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );
  static const footerTextStyle = TextStyle(
    color: AppColor.whiteSecondary,
    fontWeight: FontWeight.w400,
  );
  static const projectTitleTextStyle = TextStyle(
    color: AppColor.whitePrimary,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static const projectSubTitleTextStyle = TextStyle(
    color: AppColor.whiteSecondary,
    fontSize: 14,
  );
  static const textButtonStyle = TextStyle(
    color: AppColor.yellowSecondary,
    fontSize: 12,
  );
}
