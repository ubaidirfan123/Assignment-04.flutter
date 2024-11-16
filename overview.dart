import 'package:flutter/material.dart';
import 'img.dart';
import 'fooddetail.dart';

class OverView extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {
      "imageUrl":
          "https://images.deliveryhero.io/image/fd-pk/LH/j01s-listing.jpg?width=400&height=225",
      "title": "Fast Food",
      "subtitle": "Quick bites and popular favorites",
      "price": ""
    },
    {
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeP2gDo6moQLwxfxxliaIiu_nr6JqCvOt70g&s",
      "title": "Desi Cuisines",
      "subtitle": "Authentic flavors and traditional spices ",
      "price": ""
    },
    {
      "imageUrl":
          "https://metemgee.com/wp-content/uploads/2020/04/Guyanese-Bake-1-500x500.jpg",
      "title": "Bakes and Sweets",
      "subtitle": "Indulge in delightful bakes and sweets",
      "price": ""
    },
    // Food items list
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      backgroundColor: const Color.fromARGB(255, 62, 61, 58),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 20),
          child: Column(
            children: foodItems.map((foodItem) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDetailPage(
                        imageUrl: foodItem["imageUrl"]!,
                        title: foodItem["title"]!,
                        subtitle: foodItem["subtitle"]!,
                        price: foodItem["price"]!,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: ImgBox(
                    imageUrl: foodItem["imageUrl"]!,
                    title: foodItem["title"]!,
                    subtitle: foodItem["subtitle"]!,
                    price: foodItem["price"]!,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
