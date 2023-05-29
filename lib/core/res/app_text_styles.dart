import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const _regularFontSize = 14.0;
  static const _mediumFontSize = 16.0;
  static const _largeFontSize = 18.0;
  static const _extraLargeFontSize = 22.0;
  static const _xExtraLargeFontSize = 30.0;

  static const lato = 'Lato';
  static const lora = 'Lora';

  // ----------------   REGULAR SIZE FONT ---------------------------//

  static TextStyle regularMediumText({Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryTextColor,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily ?? lato);
  }

  static TextStyle regularBlueLoraText({Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryColor,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: lora);
  }

  static TextStyle normalBlueLoraText({Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryColor,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: lora);
  }

  static TextStyle normalBlueWithOpacityLoraText(
      {Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryColorWithOpacity,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: lora);
  }


  static TextStyle mediumLoraText({Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryColor,
        fontSize: _mediumFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: lora);
  }


  static TextStyle regularBoldText({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryTextColor,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily ?? lato);
  }

  static TextStyle regularBold500Text({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryTextColor,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily ?? lato);
  }

  // ----------------   LARGE SIZE FONT ---------------------------//

  // App Text Color
  static TextStyle largeBlackText({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.black,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: fontFamily ?? lato);
  }

  static TextStyle largeMediumText({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryTextColor,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily ?? lato);
  }

  static TextStyle largeTextLora({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryTextColor,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: fontFamily ?? lato);
  }

  static TextStyle largeBlueTextLora({Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryColor,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: lora);
  }

  static TextStyle largeNormalTextLora({Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.white,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: lora);
  }

  static TextStyle largeBoldText({Color color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryTextColor,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily ?? lato);
  }

  static TextStyle largeLightText({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryTextColor,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: fontFamily ?? lato);
  }

  // ----------------   X-LARGE SIZE FONT ---------------------------//

  // App Text Color
  static TextStyle extraLargeWhiteText({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.bgColor,
        fontSize: _extraLargeFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily ?? lora);
  }

  static TextStyle extraLargeBlackText({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.bgColor,
        fontSize: _extraLargeFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily ?? lora);
  }

  // ----------------   XX-LARGE SIZE FONT ---------------------------//

  static TextStyle xExtraLargePrimaryText({Color  color, String  fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.primaryColor,
        fontSize: _xExtraLargeFontSize,
        fontWeight: FontWeight.w800,
        fontFamily: fontFamily ?? lora);
  }

  static TextStyle xExtraLargeBlackText({Color  color, String fontFamily}) {
    return TextStyle(
        color: color ?? AppColors.black,
        fontSize: _xExtraLargeFontSize,
        fontWeight: FontWeight.w800,
        fontFamily: fontFamily ?? lora);
  }

}