import 'package:flutter/material.dart';

import 'widgets/book_background_widget.dart';

class BookBasePage extends StatefulWidget {
  final Widget child;

  const BookBasePage({super.key, required this.child});

  @override
  State<BookBasePage> createState() => _BookBasePageState();
}

class _BookBasePageState extends State<BookBasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: BookBackgroundWidget()),
          widget.child,
        ],
      ),
    );
  }
}
