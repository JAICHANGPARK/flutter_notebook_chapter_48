import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white10,
                      foregroundColor: Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: pageNum == 1 ? Colors.white10,
                      foregroundColor: Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedSearch01),
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white10,
                      foregroundColor: Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedCalendar01),
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white10,
                      foregroundColor: Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedUser02),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
