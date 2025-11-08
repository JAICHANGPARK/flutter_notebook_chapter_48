import 'package:flutter/material.dart';

class ActiveChipWidget extends StatelessWidget {
  const ActiveChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Color.fromRGBO(212, 253, 212, 1),
      ),
      padding: EdgeInsets.only(left: 3, right: 6, bottom: 4, top: 4),
      child: Row(
        spacing: 5,
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 15),
          Text(
            "Active",
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(47, 140, 64, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
