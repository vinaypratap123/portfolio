import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/constants.dart';

class SkillsDesktop extends StatefulWidget {
  const SkillsDesktop({super.key});

  @override
  State<SkillsDesktop> createState() => _SkillsDesktopState();
}

class _SkillsDesktopState extends State<SkillsDesktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///platforms
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < Constants.platformItem.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        Constants.platformItem[i]["image"],
                      ),
                    ),
                    title: Text(Constants.platformItem[i]["title"]),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),

        ///skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < Constants.skillItem.length; i++)
                  Chip(
                    backgroundColor: AppColor.bgLight2,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    label: Text(Constants.skillItem[i]["title"]),
                    avatar: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        Constants.skillItem[i]["image"],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
