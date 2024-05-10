import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 400,
            width: 300,
            child: Column(
              children: [
                ProductCard(
                  imageUrl:
                      'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQndSK7hvssofrM2uzv75NxVjrkAwH3RwyqWcBesUsmq1ipmkuljRr6x_SRbCKaBXvjTR9CKfAaEFtmUFw-69o52wgVMgk2hp8KDYr4FvKtQ8ZfKewgOW4gDQ&usqp=CAE',
                  categoryName: 'Pants',
                  shortDescription: 'Comfortable & airy. ',
                  price: 35,
                  quantity: 3,
                  productName: 'Men Linen Pants',
                  isAvailable: true,
                  rating:4.2,
                  discountPercentage: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
