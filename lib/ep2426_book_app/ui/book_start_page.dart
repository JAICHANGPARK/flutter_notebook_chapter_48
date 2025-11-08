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
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (context,index)=> Container(
                    width: 120,
                    margin: EdgeInsets.only(
                      right: 16
                    ),
                    child: Placeholder(),)),
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
