import 'package:flutter/material.dart';

class PromoProductsModal extends StatefulWidget {
  const PromoProductsModal({super.key});

  @override
  State<PromoProductsModal> createState() => _PromoProductsModalState();
}

class _PromoProductsModalState extends State<PromoProductsModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.88,
      child: Column(
        spacing: 12,
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            height: 42,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Add Product to Discount",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Positioned(
                  right: 8,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 46,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search product",
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter_list_outlined),
                  ),
                ),
              ],
            ),
          ),
          Text("Recommended by AI"),
          Expanded(child: Placeholder()),
          Container(
            padding: EdgeInsets.fromLTRB(24, 12, 24, 42),
            child: Row(
              spacing: 24,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 40,
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
