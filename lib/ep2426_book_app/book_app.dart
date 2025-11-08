import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2426_book_app/ui/book_start_page.dart';

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookStartPage(),
    );
  }
}
