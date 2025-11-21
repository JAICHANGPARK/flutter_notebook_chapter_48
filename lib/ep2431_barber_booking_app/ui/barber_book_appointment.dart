import 'package:flutter/material.dart';

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
              height: 62,
              color: Colors.blue,
              child: Row(children: []),
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
                  Container(height: 82, child: Placeholder()),
                ],
              ),
            ),
            SizedBox(height: 80, child: Placeholder()),
            Column(
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
                  padding: EdgeInsets.only(left: 12),
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
                          color: Colors.white12,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 8,
                          children: [
                            CircleAvatar(radius: 30),
                            Text(
                              "Dream",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "10 yrs exp",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
