import 'package:flutter/material.dart';

class CookingRecipesDetailPage extends StatefulWidget {
  const CookingRecipesDetailPage({super.key});

  @override
  State<CookingRecipesDetailPage> createState() =>
      _CookingRecipesDetailPageState();
}

class _CookingRecipesDetailPageState extends State<CookingRecipesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 52, child: Stack(children: [Placeholder()])),
            Row(
              children: [
                Text("Choco Macarons"),
                Spacer(),
                Icon(Icons.star),
                Text("4.7"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.alarm_add),
                Text("10 min"),
                Icon(Icons.bar_chart),
                Text("Medium")
              ],
            )
          ],
        ),
      ),
    );
  }
}
