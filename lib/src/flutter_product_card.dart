import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String? id;
  final String imageUrl;
  final String shortDescription;
  final String categoryName;
  final String productName;
  final int? quantity;
  final double price;
  final String currency;
  final VoidCallback? onTap;
  final VoidCallback? onFavoritePressed;
  final bool? isAvailable;
  final Color cardColor;
  final Color textColor;
  final double borderRadius;
  final double? rating;
  final double? discountPercentage;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.categoryName,
    required this.productName,
    required this.price,
    this.currency = '\$',
    this.onTap,
    this.onFavoritePressed,
    this.shortDescription = '',
    this.quantity = 1,
    this.id,
    this.isAvailable = true,
    this.cardColor = const Color(0xFFF0F0F0),
    this.textColor = const Color(0xFF000000),
    this.borderRadius = 12.0,
    this.rating,
    this.discountPercentage,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isAdded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        elevation: 4,
        color: widget.cardColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProductImage(),
            _FavoriteButton(
              isAdded: _isAdded,
              onPressed: () {
                setState(() {
                  _isAdded = !_isAdded;
                });
                if (widget.onFavoritePressed != null) {
                  widget.onFavoritePressed!();
                }
              },
            ),
            _buildProductDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          child: Image.network(
            widget.imageUrl,
            fit: BoxFit.cover,
            height: 170,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Text('Failed to load image'),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductDetails() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.categoryName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: widget.textColor.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.productName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: widget.textColor,
            ),
          ),
          if (widget.shortDescription.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.shortDescription,
                style: TextStyle(
                  color: widget.textColor.withOpacity(0.7),
                  fontSize: 14,
                ),
              ),
            ),
          if (widget.rating != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    index < widget.rating!.round()
                        ? Icons.star
                        : Icons.star_border,
                    color: Colors.orange,
                    size: 16,
                  ),
                ),
              ),
            ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.isAvailable!)
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Available',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              if (!widget.isAvailable!)
                Row(
                  children: [
                    Icon(
                      Icons.do_disturb_alt_rounded,
                      color: Colors.red,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Out of Stock',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (widget.discountPercentage != null)
                    Text(
                      '${widget.discountPercentage?.toStringAsFixed(0)}% OFF',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  Text(
                    '${widget.currency}${widget.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: widget.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FavoriteButton extends StatefulWidget {
  final bool isAdded;
  final VoidCallback onPressed;

  const _FavoriteButton({
    Key? key,
    required this.isAdded,
    required this.onPressed,
  }) : super(key: key);

  @override
  __FavoriteButtonState createState() => __FavoriteButtonState();
}

class __FavoriteButtonState extends State<_FavoriteButton> {
  bool _isAdded = false;

  @override
  Widget build(BuildContext context) {
    _isAdded = widget.isAdded;
    return Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        onPressed: () {
          setState(() {
            _isAdded = !_isAdded;
          });
          widget.onPressed();
        },
        icon: Icon(
          _isAdded ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
          color: _isAdded ? Colors.red : Colors.white,
        ),
      ),
    );
  }
}
