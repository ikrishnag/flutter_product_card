import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ProductCard(
                imageUrl:
                    'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQndSK7hvssofrM2uzv75NxVjrkAwH3RwyqWcBesUsmq1ipmkuljRr6x_SRbCKaBXvjTR9CKfAaEFtmUFw-69o52wgVMgk2hp8KDYr4FvKtQ8ZfKewgOW4gDQ&usqp=CAE',
                categoryName: 'Pants',
                productName: 'Men Linen Pants',
                price: 199.99,
                currency: '\$', // Default is '$'
                onTap: () {
                  // Handle card tap event
                },
                onFavoritePressed: () {
                  // Handle favorite button press
                },
                shortDescription:
                    'comfortable & airy.', // Optional short description
                rating: 4.2, // Optional rating
                discountPercentage: 35.0, // Optional discount percentage
                isAvailable: true, // Optional availability status
                cardColor: Colors.white, // Optional card background color
                textColor: Colors.black, // Optional text color
                borderRadius: 8.0, // Optional border radius
                width: 300, // optional
                height: 380, // optional
              ),
            ),
          ],
        ),
      ),
    );
  }
}
