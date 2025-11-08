import 'package:flutter/material.dart';

import 'widgets/book_background_widget.dart';

class BookHomePage extends StatefulWidget {
  const BookHomePage({super.key});

  @override
  State<BookHomePage> createState() => _BookHomePageState();
}

class _BookHomePageState extends State<BookHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        // leadingWidth: 42,
        actionsPadding: EdgeInsets.only(right: 16),

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(
            radius: 18,
          ),
        ),
        title: Text("BookApp"),
        centerTitle: true,
        actions: [
          CircleAvatar(
            child: Badge(child: Icon(Icons.notifications_active_outlined)),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [Positioned.fill(child: BookBackgroundWidget())],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_border),label: "Bookmark"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined),label: "Transaction"),
      ],),
    );
  }
}
