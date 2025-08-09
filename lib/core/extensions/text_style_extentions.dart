import 'package:bloc_ecommerce/core/res/styles/colours.dart';
import 'package:flutter/material.dart';

extension TextStyleExt on TextStyle {
  TextStyle get orange => copyWith(color: Colours.lightThemeSecondaryColor);

  TextStyle get dark => copyWith(color: Colours.lightThemePrimaryTextColor);

  TextStyle get grey => copyWith(color: Colours.lightThemeSecondaryTextColor);

  TextStyle get white => copyWith(color: Colours.lightThemeWhiteColor);

  TextStyle get primary => copyWith(color: Colours.lightThemePrimaryColor);

  TextStyle adaptiveColour(BuildContext context) =>
      copyWith(color: context.classicAdaptiveTextColor);
}
