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
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,

                      ),
                      padding: EdgeInsets.all(2),
                      child: CircleAvatar(),
                    ),
                    Text("DJ Dreamwalker"),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 42),
                      Expanded(child: Column(children: [])),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
