class ProjectModel {
  final String projectImage;
  final String projectTitle;
  final String projectSubtitle;
  final String projectGithubLink;

  ProjectModel({
    required this.projectImage,
    required this.projectTitle,
    required this.projectSubtitle,
    required this.projectGithubLink,
  });

  static List<ProjectModel> personalProject = [
    ProjectModel(
      projectImage: "assets/images/abhay.png",
      projectTitle: "Info Profile",
      projectSubtitle: "Social media application",
      projectGithubLink: "https://github.com/vinaypratap123/info_profile",
    ),
    ProjectModel(
      projectImage: "assets/images/abhay.png",
      projectTitle: "Info Profile",
      projectSubtitle: "Social media application",
      projectGithubLink: "https://github.com/vinaypratap123/info_profile",
    ),
    ProjectModel(
      projectImage: "assets/images/abhay.png",
      projectTitle: "Info Profile",
      projectSubtitle: "Social media application",
      projectGithubLink: "https://github.com/vinaypratap123/info_profile",
    ),
    ProjectModel(
      projectImage: "assets/images/abhay.png",
      projectTitle: "Info Profile",
      projectSubtitle: "Social media application",
      projectGithubLink: "https://github.com/vinaypratap123/info_profile",
    ),
  ];
}
