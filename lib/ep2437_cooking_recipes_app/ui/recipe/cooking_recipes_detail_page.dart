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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 12,
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
                  Text("Medium"),
                ],
              ),
              Container(height: 320, child: Placeholder()),
              Text("Description"),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                maxLines: 2,
              ),
              ExpansionTile(title: Text("Ingredients")),
              Divider(height: 0,),
              ExpansionTile(title: Text("Directions"),
              children: [Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")],),
              Divider(height: 0,),
            ],
          ),
        ),
      ),
    );
  }
}
