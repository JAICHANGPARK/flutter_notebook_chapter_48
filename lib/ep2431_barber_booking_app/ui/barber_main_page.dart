import 'package:flutter/material.dart';


class BarberMainPage extends StatefulWidget {
  const BarberMainPage({super.key});

  @override
  State<BarberMainPage> createState() => _BarberMainPageState();
}

class _BarberMainPageState extends State<BarberMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Column(
            children: [],
          )),
          Align(child: Container())
        ],
      ),
    );
  }
}
