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
      color: Colors.blue,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            height: 42,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                    child: Text("Add Product to Discount")),
                Positioned(
                  right: 8,

                  child: IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
