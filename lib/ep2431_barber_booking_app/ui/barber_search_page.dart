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
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(Icons.search),
                        iconColor: Colors.white,
                        border: InputBorder.none,
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
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.calendar_month),
                ),
              ],
            ),
          ),
          SizedBox(height: 54, child: Placeholder()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Eid offers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              TextButton(onPressed: () {}, child: Text("See all")),
            ],
          ),
          Container(
            height: 280,
            child: Placeholder(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Results (2512)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              TextButton(onPressed: () {}, child: Text("See all")),
            ],
          ),

        ],
      ),
    );
  }
}
