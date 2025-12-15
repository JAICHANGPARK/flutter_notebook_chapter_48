import 'package:flutter/material.dart';
import 'ui/real_esate_main_screen.dart';

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RealEstateMainScreen(),
    );
  }
}
