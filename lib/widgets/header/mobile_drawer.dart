import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_styles.dart';
import 'package:portfolio/app/constants.dart';

class MobileDrawer extends StatefulWidget {
  final Function(int) onNavbarItemTap;
  const MobileDrawer({super.key, required this.onNavbarItemTap});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < Constants.navbarItem.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: AppStyle.navBarItemStyle,
              onTap: () {
                widget.onNavbarItemTap(i);
              },
              leading: Icon(Constants.navbarIcon[i]),
              title: Text(Constants.navbarItem[i]),
            ),
        ],
      ),
    );
  }
}
