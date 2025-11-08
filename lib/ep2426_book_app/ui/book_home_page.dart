import 'package:flutter/material.dart';

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
        leading: CircleAvatar(),
        title: Text("BookApp"),
        centerTitle: true,
        actions: [
          CircleAvatar(
            child: Badge(child: Icon(Icons.notifications_active_outlined)),
          ),
        ],
      ),
      body: SafeArea(child: Column(children: [])),
    );
  }
}
