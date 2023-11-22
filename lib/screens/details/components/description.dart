import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Text(product.description,
            style: TextStyle(
                color: kTextColor.withOpacity(0.78),
                height: 1.5,
                fontSize: 13)));
  }
}
