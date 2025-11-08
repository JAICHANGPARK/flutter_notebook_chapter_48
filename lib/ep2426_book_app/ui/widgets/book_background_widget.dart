import 'package:flutter/material.dart';


class BookBackgroundWidget extends StatelessWidget {
  const BookBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
