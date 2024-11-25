
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/theming/colors.dart';
import 'package:shop_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String hintText;
  final bool? isObsecure;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final String? Function(String?)? valid;
  const AppTextFormField(
      {super.key,
      this.controller,
      this.valid,
      this.backgroundColor,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      required this.hintText,
      this.isObsecure,
      this.hintStyle,
      this.inputTextStyle,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor:backgroundColor ?? ColorManager.backGray,
        filled: true,
        isDense: true,
        contentPadding:contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle:hintStyle ?? TextStyles.font14regularLightGray,
        focusedBorder:focusedBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide:
              const BorderSide(color: ColorManager.mainBlue, width: 1.3),
        ),
        enabledBorder:enabledBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide:
              const BorderSide(color: ColorManager.lighterGray, width: 1.3),
        ),
      ),
      controller:controller ,
      obscureText: isObsecure ?? false,
      style:inputTextStyle ?? TextStyles.font14regularDarkBlue,
      validator: valid,
    );
  }
}
