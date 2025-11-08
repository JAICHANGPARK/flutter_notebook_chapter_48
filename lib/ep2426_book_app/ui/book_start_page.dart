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
            SizedBox(height: 16,),
            Container(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (context,index)=> Container(
                    width: 160,
                    margin: EdgeInsets.only(
                      right: 16
                    ),
                    child: Placeholder(),)),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (context,index)=> Container(
                    width: 160,
                    margin: EdgeInsets.only(
                        right: 16
                    ),
                    child: Placeholder(),)),
            ),
            Text("Learn more in less time"),
            Text("Enjoy ")
          ],
        ),
      ),
    );
  }
}
