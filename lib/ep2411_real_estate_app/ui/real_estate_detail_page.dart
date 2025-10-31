import 'package:flutter/material.dart';

class RealEstateDetailPage extends StatefulWidget {
  const RealEstateDetailPage({super.key});

  @override
  State<RealEstateDetailPage> createState() => _RealEstateDetailPageState();
}

class _RealEstateDetailPageState extends State<RealEstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2021/12/25/13/08/real-estate-6893060_1280.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: index == 1
                      ? Stack(
                          children: [
                            Positioned(
                              left: 16,
                              top: 16,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 16,
                                ),
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.white12,
                                ),
                                child: Text(
                                  "3D Walktrough",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Center(
                              child: CircleAvatar(
                                radius: 26,
                                backgroundColor: Colors.white12,
                                foregroundColor: Colors.white,

                                child: Icon(Icons.play_arrow, size: 28),
                              ),
                            ),
                          ],
                        )
                      : Container(),
                );
              },
              separatorBuilder: (context, index) =>
                  Divider(color: Colors.white, height: 2),
            ),
          ),
          Positioned(
            top: 0,
            right: 16,
            left: 16,
            child: SafeArea(
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white12,
                    foregroundColor: Colors.white,

                    child: Icon(Icons.favorite_border),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white12,
                    foregroundColor: Colors.white,

                    child: Icon(Icons.favorite_border),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white12,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.ios_share),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white12,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 4,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 6,
                          children: [
                            Text(
                              "\$627,000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text("7219 S 72th Ave A, Tulsa, EK 123344"),
                          ],
                        ),
                      ),
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.white),
                          color: Colors.grey,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Text('2'),
                      Text("Beds"),
                      VerticalDivider(),
                      Text('2'),
                      Text("Baths"),
                      VerticalDivider(),
                      Text('892'),
                      Text("Sq. Ft."),
                      VerticalDivider(),
                    ],
                  ),
                  Text("Key Details"),
                  Text("Updated 20/09/2025 4:32 AM"),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Status"),
                            Text("Days On Market")
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Active"),
                            Text("1")
                          ],
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
