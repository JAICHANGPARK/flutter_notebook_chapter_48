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
        actionsPadding: EdgeInsets.only(right: 16),

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(radius: 18),
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
          children: [
            Positioned.fill(child: BookBackgroundWidget()),
            Positioned(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        spacing: 4,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Looking for something inspiring?"),
                          Text("Explore our library!"),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recommended for You'),
                          Container(height: 240, child: Placeholder()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Stories from the World\'s Best Authors'),
                          Container(height: 180, child: Placeholder()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Trending on Books'),
                          Container(height: 180, child: Placeholder()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: "Transaction",
          ),
        ],
      ),
    );
  }
}
