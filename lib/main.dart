import 'package:bookly/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/presentation/view/splash_view.dart';
void main() {
  runApp(const BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: primaryColor),
      home: const SplashViewScreen(),
    );
  }
}

