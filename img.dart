import 'package:flutter/material.dart';

// Custom widget for displaying food items
class ImgBox extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;

  const ImgBox({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Width of each image box
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Rounded corners
        color: Colors.white, // Background color of the image box
        boxShadow: [
          BoxShadow(
            color: Colors.black26, // Shadow color
            blurRadius: 4, // Shadow blur radius
            offset: Offset(2, 2), // Shadow offset
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(15), // Rounded corners for the image
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover, // Image fit style
              height: 100, // Image height
              width: double.infinity, // Image width
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, // Title of the food item
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 4), // Space between title and subtitle
                Text(subtitle, // Subtitle of the food item
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
                SizedBox(height: 4), // Space between subtitle and price
                Text(price, // Price of the food item
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
