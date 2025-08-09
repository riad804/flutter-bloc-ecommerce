import 'package:bloc_ecommerce/core/common/widgets/app_logo.dart';
import 'package:bloc_ecommerce/core/res/styles/colours.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.lightThemePrimaryColor,
      body: Center(child: AppLogo()),
    );
  }
}
