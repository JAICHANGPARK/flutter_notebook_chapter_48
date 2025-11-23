import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2431_barber_booking_app/barber_theme.dart';

class BarberBookAppointment extends StatefulWidget {
  const BarberBookAppointment({super.key});

  @override
  State<BarberBookAppointment> createState() => _BarberBookAppointmentState();
}

class _BarberBookAppointmentState extends State<BarberBookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 54,

              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: 12,
                    child: CircleAvatar(
                      radius: 26,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.white24,
                      child: Icon(Icons.arrow_back_outlined),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        "Book Appointment",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Date",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white10,
                    ),
                    padding: EdgeInsets.only(left: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "23-11-2025",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.calendar_month),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: Column(
                children: [
                  Expanded(child: Placeholder()),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Text(
                    "Select Experts",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: 160,
                    // padding: EdgeInsets.only(left: 12),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 116,
                          margin: EdgeInsets.only(right: 12),
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            color: index == 0 ? accentColor : Colors.white12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8,
                            children: [
                              CircleAvatar(radius: 30),
                              Text(
                                "Dream",
                                style: TextStyle(
                                  color: index == 0
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                              Text(
                                "10 yrs exp",
                                style: TextStyle(
                                  color: index == 0
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Date & Time",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(child: Center(child: Text("October 2025"))),
                      CircleAvatar(),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 42,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: accentColor,
              ),
              child: Center(
                child: Text(
                  "Book Now",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
