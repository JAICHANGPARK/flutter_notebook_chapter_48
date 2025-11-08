import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2426_book_app/ui/book_home_page.dart';

import 'book_base_page.dart';

class BookStartPage extends StatefulWidget {
  const BookStartPage({super.key});

  @override
  State<BookStartPage> createState() => _BookStartPageState();
}

class _BookStartPageState extends State<BookStartPage> {
  @override
  Widget build(BuildContext context) {
    return BookBasePage(
      child: SafeArea(
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
            Spacer(),
            Text("Learn more in less time", style: TextStyle(fontSize: 28)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Enjoy quick insights, simple takeaways, and smarter reading made easy.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BookHomePage()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("I already have an account"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
