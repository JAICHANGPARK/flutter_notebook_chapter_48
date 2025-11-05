import 'package:flutter/material.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({super.key});

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
                Text(
                  "Promotion",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Column(
              children: [
                
              ],
            )
            Container(
              height: 52,
              child: Placeholder(),
            ),
            Container(
              height: 32,
              child: Placeholder(),
            ),
            Expanded(child: Placeholder(),),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            height: 42,
            margin: EdgeInsets.only(bottom: 32, left: 24, right: 24, top: 16),

            decoration: BoxDecoration(
              color: Colors.deepOrange,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "Create Discount",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
