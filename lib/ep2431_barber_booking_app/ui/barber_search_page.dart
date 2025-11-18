import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2431_barber_booking_app/barber_theme.dart';

class BarberSearchPage extends StatefulWidget {
  const BarberSearchPage({super.key});

  @override
  State<BarberSearchPage> createState() => _BarberSearchPageState();
}

class _BarberSearchPageState extends State<BarberSearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white24,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: accentColor,
                  child: Icon(Icons.tune),
                  foregroundColor: Colors.black,
                ),
                CircleAvatar(radius: 24, backgroundColor: Colors.white24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
