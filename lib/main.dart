import 'package:flutter/material.dart';
import 'package:responsive_product_page/screen/product_screen.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iPhone 13 CH',
      theme: ThemeData(
          unselectedWidgetColor: AppColors.black,
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 16, fontFamily: "iransans")),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                foregroundColor:
                    MaterialStateProperty.all<Color>(AppColors.black)),
          ),
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: AppColors.red,
              onPrimary: AppColors.white,
              secondary: AppColors.white,
              onSecondary: AppColors.black,
              error: AppColors.red,
              onError: AppColors.white,
              background: AppColors.white,
              onBackground: AppColors.black,
              surface: AppColors.white,
              onSurface: AppColors.black)),
      home: const ProductPage(),
    );
  }
}
