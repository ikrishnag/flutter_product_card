# flutter_product_card

[![pub package](https://img.shields.io/pub/v/flutter_product_card.svg)](https://pub.dev/packages/flutter_product_card)

`flutter_product_card` is a highly customizable and feature-rich Flutter package for displaying product cards in e-commerce or shopping applications. With this package, you can easily create visually appealing product cards with various customization options.

## Features

- Customizable card design with options for border radius, background color, and text color.
- Displays product image, name, category, description (optional), rating (optional), and price.
- Shows product availability status with icons and labels.
- Displays discount percentage (optional).
- Favorite button to mark products as favorites.
- Tap callback for handling card tap events.
- Error handling for image loading with a placeholder.
- Extracted UI components for better code organization and reusability.
- Comprehensive documentation with examples.

## Getting started- Installation

To use this package, add `flutter_product_card` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_product_card: ^0.0.8
```

Then, run `flutter pub get` to install the package.

## Usage

Import the package in your Dart file:

```dart
import 'package:flutter_product_card/flutter_product_card.dart';
```

Then, use the `ProductCard` widget in your application:

```dart
ProductCard(
  imageUrl:
  //add your image url here
      'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQndSK7hvssofrM2uzv75NxVjrkAwH3RwyqWcBesUsmq1ipmkuljRr6x_SRbCKaBXvjTR9CKfAaEFtmUFw-69o52wgVMgk2hp8KDYr4FvKtQ8ZfKewgOW4gDQ&usqp=CAE4',
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
)
```

## Customization

The ProductCard widget offers various properties to customize its appearance and behavior:

- imageUrl: (String) The URL of the product image.
- categoryName: (String) The category name of the product.
- productName: (String) The name of the product.
- price: (double) The price of the product.
- currency: (String, optional) The currency symbol to display with the price (defaults to '$').
- shortDescription: (String, optional) A short description of the product.
- onTap: (VoidCallback, optional) A callback function triggered when the card is tapped.
- onFavoritePressed: (VoidCallback, optional) A callback function triggered when the favorite icon is pressed.
- isAvailable: (bool, optional) A flag indicating whether the product is available (defaults to true).
- textColor: (Color, optional) The color used for text labels and descriptions (defaults to black).
- discountPercentage: (double, optional) A value representing the discount percentage for the product (displays a discounted price).
- rating: (double, optional) The product rating.


# Additional information

## Example

For more detailed usage examples, please refer to the [example](https://github.com/ikrishnag/flutter_product_card/tree/main/example) folder in the package repository.

```dart
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 400,
            width: 300,
            child: ProductCard(
              imageUrl:
                  'https://shorturl.at/oxA34',
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
              textColor: Colors.black,  // Optional text color
              borderRadius: 8.0, // Optional border radius
            ),
          ),
        ),
      ),
    );
  }
}
```
## Output

</td>
<td><img src="https://github.com/ikrishnag/flutter_product_card/blob/main/example_productcard.png?raw=true" alt="Example Product Card Image">
</td>
</tr>
</table>

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements (eg. documentation improvement), please open an issue or submit a pull request on the [GitHub repository](https://github.com/ikrishnag/flutter_product_card).

## Author

This package is created and maintained by [Krishna Gupta](https://www.linkedin.com/in/ikrishnag).

## Contact

If you want to connect or have any questions or need further assistance, feel free to reach out:

- Email: [e[dot]krishnagupta[at]gmail[dot]com](mailto:e.krishnagupta@gmail.com)
- LinkedIn: [@ikrishnag](https://www.linkedin.com/in/ikrishnag)
- Twitter: [@krishnagtwts](https://twitter.com/krishnagtwts)
- GitHub: [@ikrishnag](https://github.com/ikrishnag)

## License

This package is released under the [MIT License](https://opensource.org/licenses/MIT).
