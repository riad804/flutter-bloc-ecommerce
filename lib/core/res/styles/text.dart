import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  const TextStyles();

  static get poppins => GoogleFonts.poppins();

  static TextStyle headingBold = poppins.copyWith(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static TextStyle headingBold1 = poppins.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );

  static TextStyle headingRegular = poppins.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle headingBold3 = poppins.copyWith(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );

  static TextStyle headingSemiBold = poppins.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static TextStyle headingSemiBold1 = poppins.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static TextStyle headingMedium = poppins.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static TextStyle headingMedium1 = poppins.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static TextStyle headingMedium2 = poppins.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static TextStyle headingMedium3 = poppins.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static TextStyle headingMedium4 = poppins.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static TextStyle buttonTextHeadingSemiBold = poppins.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static TextStyle paragraphSubTextReqular = poppins.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle paragraphSubTextReqular1 = poppins.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle paragraphSubTextReqular2 = poppins.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle paragraphSubTextReqular3 = poppins.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle paragraphRegular = poppins.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.71,
  );

  static TextStyle appLogo = poppins.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.w700,
  );
}
