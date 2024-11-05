import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/theming/colors.dart';
import 'package:shop_app/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BoldWhite = TextStyle(
    color: Colors.white,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font24SemiBoldLightBlue = TextStyle(
    color: ColorManager.lightBlue,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font26BoldBlack = TextStyle(
    color: Colors.black,
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font16RegularWhite = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16RegularLightBlack = TextStyle(
    color: ColorManager.lightBlack,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14RegularWhite = TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16LightBlack = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.light,
  );
}
