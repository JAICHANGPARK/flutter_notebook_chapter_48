import 'package:flutter/material.dart';

import 'ui/barber_main_page.dart';

class BarberBookingApp extends StatelessWidget {
  const BarberBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BarberMainPage(),
    );
  }
}
