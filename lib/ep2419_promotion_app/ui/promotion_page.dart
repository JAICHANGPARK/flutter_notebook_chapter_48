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
      bottomNavigationBar: Container(
        height: 100,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 32,left: 24, right: 24, top: 16),

            decoration: BoxDecoration(color: Colors.deepOrange),
            child: Center(
              child: Text(
                "Create Discount",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
