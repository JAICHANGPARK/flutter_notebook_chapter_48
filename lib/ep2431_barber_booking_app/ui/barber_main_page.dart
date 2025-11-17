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
          Positioned.fill(child: IndexedStack(
            index: 0,
            children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ],
          )),
          Align(child: Container())
        ],
      ),
    );
  }
}
