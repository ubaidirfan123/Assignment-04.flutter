import 'package:flutter/material.dart';
import 'img.dart';
import 'food.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> foodItems = [
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6B_PSApmCuIWV7JjDlzYZ5bT3uRt3CqqvwQ&s",
        "title": "Chicken Haleem",
        "subtitle": "Spiced Chicken Haleem",
        "price": "PKR 580"
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdoiFtxLIB88qQRuIhGDYrJ9C_nrD9JGyW69MnTvOdYWg2DpqWmcZuxia5PHQtu3xzgZ0&usqp=CAU",
        "title": "Choco Ice Cream",
        "subtitle": "Cocoa in Every Scoop",
        "price": "PKR 350"
      },
      {
        "imageUrl":
            "https://cdn.jwplayer.com/v2/media/Gu1R3FqH/thumbnails/0RwSJqdg.jpg",
        "title": "Vanilla Custard",
        "subtitle": "Golden & Perfect",
        "price": "PKR 550"
      },
      {
        "imageUrl":
            "https://feelgoodfoodie.net/wp-content/uploads/2024/07/Salmon-Burger-12.jpg",
        "title": "Beef Burger",
        "subtitle": "Cheesy Beef Burger",
        "price": "PKR 400"
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWeECgpU7ndozaDY-cS3QKLjvSL7stKvYsOQ&s",
        "title": "Pizza",
        "subtitle": "Pepperoni pizza",
        "price": "PKR 1200"
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfJu56tqZHVCpy6cXkrQPzScbm5yoNzGtvlFZVzW0HGlCBsEdOfAWof_flHx7KdeO-EFg&usqp=CAU",
        "title": "Fried Chicken",
        "subtitle": "8 chicken pieces",
        "price": "PKR 990"
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjq2PCECX0N-IDY0JoBcNa6JGLbRAKZdEs_A&s",
        "title": "Veg Sandwich",
        "subtitle": "Grilled sanwich",
        "price": "PKR 400"
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqZqXXW6dLxMGwqwv-0BGmNihpKTlzI2E6fw&s",
        "title": "Italian Peperroni Pizza",
        "subtitle": "Pepperoni & Veggie",
        "price": "PKR 1250"
      },
      {
        "imageUrl":
            "https://images.squarespace-cdn.com/content/v1/5b4c668ecef372cf48a30038/1602709276975-KVXA3LUSN39DBFR7342P/italian+salami+subway+sandwich.jpg",
        "title": "Italian Subway",
        "subtitle": "Salami sanwich",
        "price": "PKR 880"
      },
      {
        "imageUrl":
            "https://images.immediate.co.uk/production/volatile/sites/30/2020/12/Noodles-with-chilli-oil-eggs-6ec34e9.jpg?quality=90&resize=556,505",
        "title": "Egg & Noodles",
        "subtitle": "Noodles with Soy Sauce",
        "price": "PKR 590"
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToqGomWVej7-Bn2jE9bmAnxloyeFtBdoSOfw&s",
        "title": "Turkish Meatballs",
        "subtitle": "Meatballs with Vegetables",
        "price": "PKR 880"
      },
      {
        "imageUrl":
            "https://sinfullyspicy.com/wp-content/uploads/2014/03/1200-by-1200-images-2.jpg",
        "title": "Authentic Chicken Tikka",
        "subtitle": "Murgh Tikka",
        "price": "PKR 1450"
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6B_PSApmCuIWV7JjDlzYZ5bT3uRt3CqqvwQ&s",
        "title": "Chicken Haleem",
        "subtitle": "Spiced Chicken Haleem",
        "price": "PKR 580"
      },
      // Food items data...
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 62, 61, 58),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Within 30 minutes'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              (foodItems.length / 2).ceil(),
              (index) {
                final int firstIndex = index * 2;
                final int secondIndex = firstIndex + 1;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetailPage(
                                imageUrl: foodItems[firstIndex]["imageUrl"]!,
                                title: foodItems[firstIndex]["title"]!,
                                subtitle: foodItems[firstIndex]["subtitle"]!,
                                price: foodItems[firstIndex]["price"]!,
                              ),
                            ),
                          );
                        },
                        child: ImgBox(
                          imageUrl: foodItems[firstIndex]["imageUrl"]!,
                          title: foodItems[firstIndex]["title"]!,
                          subtitle: foodItems[firstIndex]["subtitle"]!,
                          price: foodItems[firstIndex]["price"]!,
                        ),
                      ),
                    ),
                    if (secondIndex < foodItems.length)
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoodDetailPage(
                                  imageUrl: foodItems[secondIndex]["imageUrl"]!,
                                  title: foodItems[secondIndex]["title"]!,
                                  subtitle: foodItems[secondIndex]["subtitle"]!,
                                  price: foodItems[secondIndex]["price"]!,
                                ),
                              ),
                            );
                          },
                          child: ImgBox(
                            imageUrl: foodItems[secondIndex]["imageUrl"]!,
                            title: foodItems[secondIndex]["title"]!,
                            subtitle: foodItems[secondIndex]["subtitle"]!,
                            price: foodItems[secondIndex]["price"]!,
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
        backgroundColor:
            const Color.fromARGB(255, 62, 61, 58), // Background color
      ),
    );
  }
}

class FoodDetailPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;

  const FoodDetailPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Title of the food detail page
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Back button
        ),
      ),
      backgroundColor: const Color.fromARGB(
          255, 62, 61, 58), // Background color of detail page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl), // Displaying the food image
            SizedBox(height: 20), // Space between image and title
            Text(
              title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold), // Food title styling
            ),
            SizedBox(height: 10), // Space between title and subtitle
            Text(
              subtitle,
              style: TextStyle(fontSize: 16), // Food subtitle styling
            ),
            SizedBox(height: 20), // Space between subtitle and price
            Text(
              price,
              style: TextStyle(
                  fontSize: 20, color: Colors.green), // Food price styling
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$title added to cart!')),
          );
        },
        child: Icon(Icons.add_shopping_cart), // Cart icon
        backgroundColor: Colors.green, // Color of the add-to-cart button
      ),
    );
  }
}
