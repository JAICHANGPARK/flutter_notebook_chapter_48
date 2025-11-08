import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2419_promotion_app/ui/widget/active_chip_widget.dart';

import 'promo_products_modal.dart';


class PromoCreateDiscountModalWidget extends StatefulWidget {
  const PromoCreateDiscountModalWidget({super.key});

  @override
  State<PromoCreateDiscountModalWidget> createState() => _PromoCreateDiscountModalWidgetState();
}

class _PromoCreateDiscountModalWidgetState extends State<PromoCreateDiscountModalWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Text(
                  "Create Discount",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 16,
                  children: [
                    Column(
                      spacing: 4,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            Text(
                              "Discount Code",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              size: 14,
                            ),
                          ],
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(
                              249,
                              249,
                              251,
                              1,
                            ),
                            borderRadius:
                            BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor:
                                  Colors.black,
                                ),
                                child: Text(
                                  "Generate",
                                  style: TextStyle(
                                    decoration: TextDecoration
                                        .underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      spacing: 4,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            Text(
                              "Minimum Purchase Requirements",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 42,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(
                              249,
                              249,
                              251,
                              1,
                            ),
                            borderRadius:
                            BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox.shrink(),
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "No minimum requirements",
                                ),
                              ),
                            ],
                            onChanged: (v) {},
                          ),
                        ),
                      ],
                    ),
                    Column(
                      spacing: 4,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            Text(
                              "Type",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 42,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(
                                    249,
                                    249,
                                    251,
                                    1,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(
                                    4,
                                  ),
                                  border: Border.all(
                                    color: Colors.grey[400]!,
                                  ),
                                ),
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline:
                                  SizedBox.shrink(),
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "Percentage",
                                      ),
                                    ),
                                  ],
                                  onChanged: (v) {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 42,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(
                                    249,
                                    249,
                                    251,
                                    1,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(
                                    4,
                                  ),
                                  border: Border.all(
                                    color: Colors.grey[400]!,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration:
                                        InputDecoration(
                                          border:
                                          InputBorder
                                              .none,
                                        ),
                                      ),
                                    ),
                                    Text("%"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      spacing: 4,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            Text(
                              "Applies to",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 42,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(
                              249,
                              249,
                              251,
                              1,
                            ),
                            borderRadius:
                            BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox.shrink(),
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Specific Product",
                                ),
                              ),
                            ],
                            onChanged: (v) {},
                          ),
                        ),
                      ],
                    ),
                    Column(
                      spacing: 4,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.add, size: 16),
                            TextButton(
                              onPressed: () {
                                showModalBottomSheet(context: context, builder: (context){
                                  return PromoProductsModal();
                                });
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                textStyle: TextStyle(
                                  decoration: TextDecoration
                                      .underline,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: Text("Add Product"),
                            ),
                          ],
                        ),
                        Column(
                          children: List.generate(4, (idx) {
                            return Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                // color: Color.fromRGBO(
                                //   249,
                                //   249,
                                //   251,
                                //   1,
                                // ),
                                borderRadius:
                                BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.grey[400]!,
                                ),
                              ),
                              child: Row(
                                spacing: 8,
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      color:
                                      Colors.grey[100]!,
                                      borderRadius:
                                      BorderRadius.circular(
                                        8,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
                                      children: [
                                        ActiveChipWidget(),
                                        Text(
                                          "Macbook M2 Pro 512GB",
                                        ),
                                        Row(
                                          spacing: 8,
                                          children: [
                                            Text("\$1200"),
                                            Container(
                                              height: 12,
                                              width: 12,
                                              decoration:
                                              BoxDecoration(
                                                color: Colors
                                                    .grey,
                                              ),
                                            ),
                                            Text("Space Grey"),
                                            Text("1234 stocks")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.delete_outline,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(24, 24, 24, 42),
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
                        borderRadius: BorderRadius.circular(
                          6,
                        ),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      height: 38,
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
