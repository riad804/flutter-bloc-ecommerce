import 'package:bloc_ecommerce/core/extensions/text_style_extentions.dart';
import 'package:bloc_ecommerce/core/res/styles/colours.dart';
import 'package:bloc_ecommerce/core/res/styles/text.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.style});

  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Ecom",
        style: style ?? TextStyles.appLogo.white,
        children: [
          TextSpan(
            text: "merce",
            style: TextStyle(color: Colours.lightThemeSecondaryColor),
          ),
        ],
      ),
    );
  }
}
