import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';
import 'package:portfolio/app/constants.dart';
import 'package:portfolio/widgets/contacts/contacts_section.dart';
import 'package:portfolio/widgets/footer/footer.dart';
import 'package:portfolio/widgets/header/header_desktop.dart';
import 'package:portfolio/widgets/header/header_mobile.dart';
import 'package:portfolio/widgets/header/mobile_drawer.dart';
import 'package:portfolio/widgets/main/main_desktop.dart';
import 'package:portfolio/widgets/main/main_mobile.dart';
import 'package:portfolio/widgets/projects/project_section.dart';
import 'package:portfolio/widgets/skills/skills_desktop.dart';
import 'package:portfolio/widgets/skills/skills_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColor.scaffoldBg,

          /// MOBILE DRAWER

          endDrawer: constraints.maxWidth >= Constants.desktopWidth
              ? null
              : MobileDrawer(
                  onNavbarItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToIndex(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollController,
            child: Column(
              children: [
                /// HEADER SECTION
                SizedBox(
                  key: navbarKeys.first,
                ),

                ///header desktop
                if (constraints.maxWidth >= Constants.desktopWidth)
                  HeaderDesktop(
                    onNavbarItemTap: (int navIndex) {
                      scrollToIndex(navIndex);
                    },
                  )

                ///header phone
                else
                  HeaderMobile(
                    menuButton: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                ///main section

                ///main desktop
                if (constraints.maxWidth >= Constants.desktopWidth)
                  const MainDesktop()

                ///main mobile
                else
                  const MainMobile(),

                ///skills section

                Container(
                  key: navbarKeys[1],
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  width: width,
                  color: AppColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        AppString.whatICanDo,
                        style: AppStyle.mainMobileBodyStyle,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //desktop skills
                      if (constraints.maxWidth >= Constants.desktopWidth)
                        const SkillsDesktop()
                      // mobile skills
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),

                ///projects section
                ProjectSection(
                  key: navbarKeys[2],
                ),

                ///contacts section
                ContactsSection(
                  key: navbarKeys[3],
                  nameController: _nameController,
                  emailController: _emailController,
                  messageController: _messageController,
                ),

                ///footer section
                const Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToIndex(int navIndex) {
    if (navIndex == 4) {
      //open blog screen
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
