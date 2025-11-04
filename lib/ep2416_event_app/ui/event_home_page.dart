import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2416_event_app/ui/event_explore_page.dart';
import 'package:flutter_notebook_chapter_48/ep2416_event_app/ui/event_music_page.dart';

class EventHomePage extends StatefulWidget {
  const EventHomePage({super.key});

  @override
  State<EventHomePage> createState() => _EventHomePageState();
}

class _EventHomePageState extends State<EventHomePage> {
  int pageNum = 0;

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
                decoration: BoxDecoration(color: Colors.white10),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone),
                          iconSize: 28,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          iconSize: 28,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.tune),
                          iconSize: 28,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.discount_outlined),
                          iconSize: 28,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IndexedStack(
                      index: pageNum,
                      children: [EventExplorePage(), EventMusicPage()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        // height: 72,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 20, spreadRadius: 30),
          ],
        ),
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_filled),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_on_outlined),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.queue_music_outlined),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_outlined),
              iconSize: 32,
            ),
          ],
        ),
      ),
    );
  }
}
