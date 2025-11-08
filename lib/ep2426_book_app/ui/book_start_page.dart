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
            SizedBox(height: 16),
            Container(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) => Container(
                  width: 160,
                  margin: EdgeInsets.only(right: 16),
                  child: Placeholder(),
                ),
              ),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) => Container(
                  width: 160,
                  margin: EdgeInsets.only(right: 16),
                  child: Placeholder(),
                ),
              ),
            ),
            Text("Learn more in less time", style: TextStyle(fontSize: 28)),
            Text(
              "Enjoy quick insights, simple takeaways, and smarter reading made easy.",
              style: TextStyle(fontSize: 16),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("I already have an account"),
            ),
          ],
        ),
      ),
    );
  }
}
