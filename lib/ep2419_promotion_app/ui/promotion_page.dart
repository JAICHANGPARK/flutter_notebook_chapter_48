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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            spacing: 24,
            children: [
              Row(
                spacing: 16,
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  Text(
                    "Promotion",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              Column(
                spacing: 12,
                children: [
                  Container(
                    height: 42,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(249, 249, 251, 1),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      spacing: 4,
                      children: [
                        Icon(Icons.search),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search or create a customer",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 32,
                    child: Row(
                      spacing: 8,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            "All",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.grey),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            "Active",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.grey),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            "Scheduled",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.grey),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            "Expired",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            spacing: 6,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Holiday Discount",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text("Amount of Orders 20%"),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color.fromRGBO(212, 253, 212, 1),
                          ),
                          padding: EdgeInsets.only(
                            left: 3,
                            right: 6,
                            bottom: 4,
                            top: 4,
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 15,
                              ),
                              Text(
                                "Active",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(47, 140, 64, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(height: 32),
                  itemCount: 25,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isDismissible: false,
                isScrollControlled: true,
                useSafeArea: true,
                backgroundColor: Colors.white,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
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
                                            Icon(Icons.info_outline, size: 14),
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
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(child: TextField()),
                                              TextButton(
                                                onPressed: () {},
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
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
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
                                                  borderRadius: BorderRadius.circular(
                                                    4,
                                                  ),
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
                                                  borderRadius: BorderRadius.circular(
                                                    4,
                                                  ),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                child:Row(
                                                  children: [
                                                    Expanded(child: TextField()),
                                                    Text("%")
                                                  ],
                                                )
                                              ),
                                            ),
                                          ],
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(24, 24, 24, 42),
                              child: Row(
                                spacing: 24,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(color: Colors.black),
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
                    },
                  );
                },
              );
            },
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
      ),
    );
  }
}
