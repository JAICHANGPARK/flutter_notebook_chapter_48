import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2431_barber_booking_app/barber_theme.dart';

class BarberSearchPage extends StatefulWidget {
  const BarberSearchPage({super.key});

  @override
  State<BarberSearchPage> createState() => _BarberSearchPageState();
}

class _BarberSearchPageState extends State<BarberSearchPage> {
  final List<String> tabs = ["All", "Haircuts", "Color", "Perm", "Hairdo", "Facial", "Skincare", "Nail", "Mass"];
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                  foregroundColor: Colors.black,
                  child: Icon(Icons.tune),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white24,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.calendar_month),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabs.length,
              itemBuilder: (context, index) {
                final item = tabs[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.only(right: 8),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: index == selectedTab
                          ? accentColor
                          : Colors.white12,
                    ),
                    child: Center(
                      child: Text(
                        "${item}",
                        style: TextStyle(
                          color: index == selectedTab
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Container(height: 280, child: Placeholder()),
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
                  Container(height: 180, child: Placeholder()),
                  Container(height: 180, child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
