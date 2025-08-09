import 'package:bloc_ecommerce/core/res/styles/colours.dart';
import 'package:bloc_ecommerce/core/services/injection_container.dart';
import 'package:bloc_ecommerce/core/services/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colours.lightThemePrimaryColor,
      ),
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: Colours.lightThemeTintStockColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colours.lightThemeTintStockColor,
        foregroundColor: Colours.lightThemePrimaryTextColor,
      ),
      useMaterial3: true,
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Ecommerce App",
      routerConfig: router,
      themeMode: ThemeMode.system,
      theme: theme,
      darkTheme: theme.copyWith(
        scaffoldBackgroundColor: Colours.darkThemeBGDark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colours.darkThemeBGDark,
          foregroundColor: Colours.lightThemeWhiteColor,
        ),
      ),
    );
  }
}
