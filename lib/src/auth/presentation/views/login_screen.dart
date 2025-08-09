import 'package:bloc_ecommerce/core/common/widgets/app_bar_bottom.dart';
import 'package:bloc_ecommerce/core/res/styles/text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In', style: TextStyles.headingSemiBold),
        bottom: const AppBarBottom(),
      ),
      body: Container(),
    );
  }
}
