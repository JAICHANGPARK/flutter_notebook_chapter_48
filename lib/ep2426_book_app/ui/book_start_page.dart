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
      body: SafeArea(
        child: Column(
          spacing: 16,
          children: [
            Container(
              height: 180,
              child: ListView.builder(itemBuilder: (context,index)=> Container(child: Placeholder(),)),
            ),
            Container(
              height: 180,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
