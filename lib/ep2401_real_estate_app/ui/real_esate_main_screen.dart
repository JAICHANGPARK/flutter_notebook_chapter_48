import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class RealEstateMainScreen extends StatefulWidget {
  const RealEstateMainScreen({super.key});

  @override
  State<RealEstateMainScreen> createState() => _RealEstateMainScreenState();
}

class _RealEstateMainScreenState extends State<RealEstateMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(radius: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dream Walker",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Find your new house",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          blurRadius: 12,
                          spreadRadius: 12,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Center(
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedNotification01,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                shadows: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    blurRadius: 8,
                    spreadRadius: 8,
                  ),
                ],
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Expanded(child: Column(children: [])),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.tune),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured Property",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromRGBO(139, 150, 82, 1),
                            ),
                            child: Text("View All"),
                          ),
                        ],
                      ),
                      SizedBox(height: 320, child: Placeholder()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Listing Agents",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromRGBO(139, 150, 82, 1),
                            ),
                            child: Text("View All"),
                          ),
                        ],
                      ),
                      SizedBox(height: 240, child: Placeholder()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: HugeIcon(icon: HugeIcons.strokeRoundedCalendar01),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            icon: HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: HugeIcon(icon: HugeIcons.strokeRoundedMessage01),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
