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

                      children: [
                        Container(),
                        EventExplorePage(),
                        Container(),
                        EventMusicPage(),
                        Container(),
                      ],
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
              onPressed: () {
                setState(() {
                  pageNum = 0;
                });
              },
              icon: Icon(Icons.home_filled),
              iconSize: 32,
              color: pageNum == 0 ? Colors.red : Colors.grey,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 1;
                });
              },
              icon: Icon(Icons.location_on_outlined),
              iconSize: 32,
              color: pageNum == 1 ? Colors.red : Colors.grey,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 2;
                });
              },
              icon: Icon(Icons.favorite_border),
              color: pageNum == 2 ? Colors.red : Colors.grey,
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 3;
                });
              },
              icon: Icon(Icons.queue_music_outlined),
              color: pageNum == 3 ? Colors.red : Colors.grey,
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 4;
                });
              },
              icon: Icon(Icons.account_circle_outlined),
              color: pageNum == 4 ? Colors.red : Colors.grey,
              iconSize: 32,
            ),
          ],
        ),
      ),
    );
  }
}
