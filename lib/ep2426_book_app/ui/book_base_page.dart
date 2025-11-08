import 'package:flutter/material.dart';

class BookBasePage extends StatefulWidget {
  Widget child;
  const BookBasePage({super.key ,this.child,});

  @override
  State<BookBasePage> createState() => _BookBasePageState();
}

class _BookBasePageState extends State<BookBasePage> {
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

                  colors: [
                    Color.fromRGBO(254, 247, 236, 1),
                    Colors.white,
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
