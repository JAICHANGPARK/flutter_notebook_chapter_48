import 'package:flutter/material.dart';

class EventMusicPage extends StatefulWidget {
  const EventMusicPage({super.key});

  @override
  State<EventMusicPage> createState() => _EventMusicPageState();
}

class _EventMusicPageState extends State<EventMusicPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(height: 100, child: Placeholder()),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {})),
        ],
      ),
    );
  }
}
