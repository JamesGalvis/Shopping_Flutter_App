import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: const TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(text: "Price\n"),
                  TextSpan(
                    text: "\$${product.price}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(product.image, fit: BoxFit.fill)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
