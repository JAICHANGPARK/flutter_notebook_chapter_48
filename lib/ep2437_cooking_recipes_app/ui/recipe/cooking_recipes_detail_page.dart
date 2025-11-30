import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 12,
            children: [
              SizedBox(
                height: 52,
                child: Stack(children: [Positioned(child: CircleAvatar())]),
              ),
              Row(
                spacing: 8,
                children: [
                  Text(
                    "Choco Macarons",
                    style: TextStyle(fontWeight: .bold, fontSize: 26),
                  ),
                  Spacer(),
                  Icon(Icons.star, color: Colors.orange),
                  Text("4.7"),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.alarm_add, size: 18),
                  Text("10 min"),
                  Icon(Icons.bar_chart, size: 18),
                  Text("Medium"),
                ],
              ),
              Container(height: 320, child: Placeholder()),
              Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                maxLines: 2,
              ),
              Gap(0),
              Column(
                children: [
                  ListTileTheme(
                    contentPadding: .zero,

                    // minVerticalPadding: 0,
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      shape: Border(),

                      visualDensity: VisualDensity.compact,
                      title: Text("Ingredients"),
                    ),
                  ),
                  Divider(height: 0),
                ],
              ),
              Gap(4),
              Column(
                children: [
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    minTileHeight: 0,
                    shape: Border(),
                    visualDensity: VisualDensity.compact,
                    title: Text("Directions"),
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      ),
                    ],
                  ),
                  Divider(height: 0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
