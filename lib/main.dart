import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ShopLiveApp());
}

class ShopLiveApp extends StatelessWidget {
  const ShopLiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7E63B8);
    const Color darkPurple = Color(0xFF5D4696);
    const Color inputFill = Color(0xFFE3DFE8);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopLive Static UI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryPurple,
          primary: primaryPurple,
          secondary: darkPurple,
          surfaceContainerHighest: inputFill,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryPurple,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ),
      // PREVIEW SWITCH:
      // 1. Keep LoginScreen() active to capture Screen_1.png
      // 2. Comment LoginScreen() and uncomment HomeScreen() to capture Screen_2.png
      home: const LoginScreen(),
      // home: const HomeScreen(),
    );
  }
}
