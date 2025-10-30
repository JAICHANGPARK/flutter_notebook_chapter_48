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
                  child: index == 1 ? Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white12,
                          foregroundColor: Colors.white,

                          child: Icon(Icons.favorite_border),
                        ),
                      )


                    ],
                  ) : Container(),
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
        ],
      ),
    );
  }
}
