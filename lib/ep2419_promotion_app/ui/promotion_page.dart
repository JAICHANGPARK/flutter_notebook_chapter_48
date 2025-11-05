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

            decoration: BoxDecoration(color: Colors.deepOrange),
            child: Text(
              "Create Discount",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
