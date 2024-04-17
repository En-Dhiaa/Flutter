import 'package:flutter/material.dart';

class TSizes {
// Padding and margin sizes
  static const double sm = 2.0;
  static const double xs = 4.0;
  static const double sa = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  //icon
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconlg = 32.0;

  // Font sizes

  static const double fontSizeSm = 14.8;
  static const double fontSizeMd = 16.0;
  static const double fontSizelg = 18.0;

// Button sizes

  static const double buttonmeight = 18.0;
  static const double buttonRadius = 12.0;
  static const double buttonWidth = 120.0;

  static const double buttonElevation = 4.0;

// AppBar height

  static const double appbarWeight = 56.0;

// Inage sizes

  static const double imageThumbSize = 80.0;

// Default spacing between sections

  static const double defaultSpace = 24.0;
  static const double spacebetween = 16.0;
  static const double spacentSections = 32.8;
  static const double spaceBetweenFileds = 16.0;

  static const double borderRadiusSm = 4.0;
  static const double borderRadiusMd = 8.0;
  static const double borderRadiusLg = 12.8;
}

class TSpacingStyle {
  static const EdgeInsetsGeometry addingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appbarWeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}
