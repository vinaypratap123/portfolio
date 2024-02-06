import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';
import 'package:portfolio/app/app_images.dart';
import 'package:portfolio/app/app_strings.dart';
import 'package:portfolio/app/app_styles.dart';
import 'package:portfolio/app/constants.dart';
import 'package:portfolio/widgets/contacts/custom_text_field.dart';

class ContactsSection extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  const ContactsSection({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.messageController,
  });

  @override
  State<ContactsSection> createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: double.infinity,
      color: AppColor.bgLight1,
      child: Column(
        children: [
          const Text(
            AppString.getInTouch,
            style: AppStyle.mainMobileBodyStyle,
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= Constants.desktopWidth) {
                  return desktopForm();
                } else {
                  return mobilForm();
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //message field
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: Flexible(
              child: CustomTextField(
                controller: widget.messageController,
                hintText: AppString.leaveMessageHere,
                maxLine: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.yellowPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  AppString.getInTouch,
                  style: AppStyle.buttonStyle,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod(
                    "open",
                    [Constants.githubLink],
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppImage.githubLogo,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod(
                    "open",
                    [Constants.linkedinLink],
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppImage.linkedinLogo,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppImage.telegramLogo,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod(
                    "open",
                    [Constants.instagramLink],
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppImage.instagramLogo,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppImage.facebookLogo,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row desktopForm() {
    return Row(
      children: [
        //name field
        Flexible(
          child: CustomTextField(
            controller: widget.nameController,
            hintText: AppString.yourName,
            maxLine: 1,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        //email field
        Flexible(
          child: CustomTextField(
            controller: widget.emailController,
            hintText: AppString.yourEmail,
            maxLine: 1,
          ),
        ),
      ],
    );
  }

  Column mobilForm() {
    return Column(
      children: [
        //name field
        Flexible(
          child: CustomTextField(
            controller: widget.nameController,
            hintText: AppString.yourName,
            maxLine: 1,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        //email field
        Flexible(
          child: CustomTextField(
            controller: widget.emailController,
            hintText: AppString.yourEmail,
            maxLine: 1,
          ),
        ),
      ],
    );
  }
}
