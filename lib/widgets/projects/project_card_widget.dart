import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_images.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';
import 'package:portfolio/models/project_model.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectCard({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.bgLight2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 250,
            height: 160,
            child: Image.asset(
              projectModel.projectImage,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            child: Text(
              projectModel.projectTitle,
              style: AppStyle.projectTitleTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 5),
            child: Text(
              projectModel.projectSubtitle,
              style: AppStyle.projectSubTitleTextStyle,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            color: AppColor.bgLight1,
            child: Row(
              children: [
                const Text(
                  AppString.checkoutOnGithub,
                  style: AppStyle.textButtonStyle,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    js.context.callMethod(
                      "open",
                      [projectModel.projectGithubLink],
                    );
                  },
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(AppImage.githubLogo),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
