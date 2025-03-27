import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> arrGridContent = [
    {"img": "assets/images/3dvr.jpg"},
    {"img": "assets/images/apploginbackground.jpg"},
    {"img": "assets/images/lineimg.jpg"},
    {"img": "assets/images/militaryvr.jpg"},
    {"img": "assets/images/wallpapermobilie.jpg"},
    {"img": "assets/images/educationvr.jpg"},
    {"img": "assets/images/vrboy.jpg"},
    {"img": "assets/images/3dview.jpg"},
    {"img": "assets/images/apploginbackground.jpg"},
    {"img": "assets/images/3dvr.jpg"},
    {"img": "assets/images/vrboy.jpg"},
    {"img": "assets/images/3dview.jpg"},
    {"img": "assets/images/vrboy.jpg"},
    {"img": "assets/images/militaryvr.jpg"},
    {"img": "assets/images/3dvr.jpg"},
    {"img": "assets/images/useravtar.jpg"},
    {"img": "assets/images/apploginbackground.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade800,
          ),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.builder(
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
          ),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          itemCount: arrGridContent.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                arrGridContent[index]["img"]!,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
