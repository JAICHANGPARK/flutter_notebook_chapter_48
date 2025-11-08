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
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color.fromRGBO(254, 247, 236, 1), Colors.white],
                ),
              ),
            ),
          ),
          SafeArea(
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
                Container(
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
                TextButton(
                  onPressed: () {},
                  child: Text("I already have an account"),
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
