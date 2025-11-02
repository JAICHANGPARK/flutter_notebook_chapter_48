import 'package:flutter/material.dart';

class EventHomePage extends StatefulWidget {
  const EventHomePage({super.key});

  @override
  State<EventHomePage> createState() => _EventHomePageState();
}

class _EventHomePageState extends State<EventHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [Colors.red,
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
