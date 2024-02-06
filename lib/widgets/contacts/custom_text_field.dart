import 'package:flutter/material.dart';
import 'package:portfolio/app/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final int maxLine;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.maxLine,
    required this.hintText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: widget.maxLine,
      style: const TextStyle(
        color: AppColor.scaffoldBg,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        filled: true,
        fillColor: AppColor.whiteSecondary,
        border: getInputBorder,
        enabledBorder: getInputBorder,
        focusedBorder: getInputBorder,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: AppColor.hintDark,
        ),
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
