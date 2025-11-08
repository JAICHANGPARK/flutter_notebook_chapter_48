import 'package:flutter/material.dart';


class BookStartPage extends StatefulWidget {
  const BookStartPage({super.key});

  @override
  State<BookStartPage> createState() => _BookStartPageState();
}

class _BookStartPageState extends State<BookStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 16,
        children: [
          Container(
            height: 180,
            child: Placeholder(),
          ),
          Container(
            height: 180,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
