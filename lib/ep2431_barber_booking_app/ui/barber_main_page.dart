import 'package:flutter/material.dart';

class BarberMainPage extends StatefulWidget {
  const BarberMainPage({super.key});

  @override
  State<BarberMainPage> createState() => _BarberMainPageState();
}

class _BarberMainPageState extends State<BarberMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: IndexedStack(
              index: pageNum,
              children: [
                Placeholder(),
                Placeholder(),
                Placeholder(),
                Placeholder(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              child: Row(children: [
                CircleAvatar(),
                CircleAvatar(),
                CircleAvatar(),
                CircleAvatar(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
