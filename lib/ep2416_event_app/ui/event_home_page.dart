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
                        IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                        Spacer(),
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      ],
                    ),
                  ),
                  Expanded(child: IndexedStack(index: 0, children: [
                    ListView.builder(itemBuilder: (context,index){
                      return Placeholder();
                    },),
                  ])),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 72,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 20, spreadRadius: 20,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_on_outlined),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.queue_music_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
