import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';

class HeaderMobile extends StatefulWidget {
  final VoidCallback menuButton;
  const HeaderMobile({super.key, required this.menuButton});

  @override
  State<HeaderMobile> createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            AppColor.bgLight1,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
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
          IconButton(
            onPressed: widget.menuButton,
            icon: const Icon(
              Icons.menu,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
