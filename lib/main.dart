import 'package:college_campus/core/theme.dart';
import 'package:college_campus/features/views/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CollegeCampus());
}

class CollegeCampus extends StatelessWidget {
  const CollegeCampus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: SplashScreen(),
    );
  }
}
