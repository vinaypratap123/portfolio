import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/widgets/projects/project_card_widget.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key});

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: double.maxFinite,
      color: AppColor.scaffoldBg,
      child: Column(
        children: [
          const Text(
            AppString.personalProjects,
            style: AppStyle.mainMobileBodyStyle,
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800,
            ),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                for (int i = 0; i < ProjectModel.personalProject.length; i++)
                  ProjectCard(
                    projectModel: ProjectModel.personalProject.first,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
