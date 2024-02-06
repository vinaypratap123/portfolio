import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/constants.dart';

class SkillsMobile extends StatefulWidget {
  const SkillsMobile({super.key});

  @override
  State<SkillsMobile> createState() => _SkillsMobileState();
}

class _SkillsMobileState extends State<SkillsMobile> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        children: [
          // platforms
          for (int i = 0; i < Constants.platformItem.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.bgLight2,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    Constants.platformItem[i]["image"],
                  ),
                ),
                title: Text(
                  Constants.platformItem[i]["title"],
                ),
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          //skills
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
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
        ],
      ),
    );
  }
}
