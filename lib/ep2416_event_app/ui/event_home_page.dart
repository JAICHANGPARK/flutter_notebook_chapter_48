import 'dart:ui';

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
                color: Colors.white,
                gradient: RadialGradient(
                  colors: [Colors.red[300]!, Colors.white],
                  center: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white10
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
