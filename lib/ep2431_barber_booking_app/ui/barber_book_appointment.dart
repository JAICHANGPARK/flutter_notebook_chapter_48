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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Date",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 82,
                    child: Placeholder(),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
