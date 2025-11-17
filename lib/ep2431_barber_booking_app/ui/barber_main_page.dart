import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class BarberMainPage extends StatefulWidget {
  const BarberMainPage({super.key});

  @override
  State<BarberMainPage> createState() => _BarberMainPageState();
}

class _BarberMainPageState extends State<BarberMainPage> {
  int pageNum = 0;
  Color accentColor = Color.fromRGBO(109, 234, 237, 1);

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
                      backgroundColor: pageNum == 0
                          ? accentColor
                          : Colors.white10,
                      foregroundColor: pageNum == 0
                          ? Colors.black
                          : Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: pageNum == 1
                          ? accentColor
                          : Colors.white10,
                      foregroundColor: pageNum == 1
                          ? Colors.black
                          : Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedSearch01),
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: pageNum == 2
                          ? accentColor
                          : Colors.white10,
                      foregroundColor: pageNum == 2
                          ? Colors.black
                          : Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedCalendar01),
                    ),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: pageNum == 3
                          ? accentColor
                          : Colors.white10,
                      foregroundColor: pageNum == 3
                          ? Colors.black
                          : Colors.white,
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
