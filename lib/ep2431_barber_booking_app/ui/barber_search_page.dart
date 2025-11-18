import 'package:flutter/material.dart';

class BarberSearchPage extends StatefulWidget {
  const BarberSearchPage({super.key});

  @override
  State<BarberSearchPage> createState() => _BarberSearchPageState();
}

class _BarberSearchPageState extends State<BarberSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: ShapeDecoration(shape: StadiumBorder()),
              ),
            ),
            CircleAvatar()
          ],
        ),
      ],
    );
  }
}
