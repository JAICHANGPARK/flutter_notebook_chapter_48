import 'package:flutter/material.dart';

import 'active_chip_widget.dart';

class PromoProductWidget extends StatefulWidget {
  final bool enableEdit;

  const PromoProductWidget({super.key, this.enableEdit = false});

  @override
  State<PromoProductWidget> createState() => _PromoProductWidgetState();
}

class _PromoProductWidgetState extends State<PromoProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 8),
      decoration: !widget.enableEdit
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey[400]!),
            )
          : null,
      child: Row(
        spacing: 8,
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              color: Colors.grey[100]!,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ActiveChipWidget(),
                Text("Macbook M2 Pro 512GB"),
                Row(
                  spacing: 8,
                  children: [
                    Text(
                      "\$1200",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                    Text("Space Grey"),
                    Text("1234 stocks"),
                  ],
                ),
              ],
            ),
          ),
          switch (widget.enableEdit) {
            true => SizedBox(
              height: 32,
              width: 32,
              child: Checkbox(

                  value: false, onChanged: (bool? value) {}),
            ),
            false => Icon(Icons.delete_outline, color: Colors.red),
          },
        ],
      ),
    );
  }
}
