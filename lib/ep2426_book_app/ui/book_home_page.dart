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
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
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
                          Text(
                            "Looking for something inspiring?",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Explore our library!",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recommended for You',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: 220,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 12),
                                  width: 150,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[400]!,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2022/12/16/16/28/flowers-7660120_1280.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stories from the World\'s Best Authors',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: 160,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 12),
                                  width: 130,
                                  padding: EdgeInsets.all(3),
                                  child: Column(
                                    spacing: 6,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            // borderRadius: BorderRadius.circular(4),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2021/11/10/18/21/woman-6784555_1280.jpg",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Dream Walker",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trending on Books',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: 180,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Row(
                                    spacing: 12,
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 140,
                                        child: Placeholder(),
                                      ),
                                      Expanded(child: Text("The Fast 20 Hours: How to Learn Anything..."))
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
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
