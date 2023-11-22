import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class ColorWithSize extends StatelessWidget {
  const ColorWithSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Color", style: TextStyle(fontSize: 14)),
              Row(
                children: [
                  ColorDot(color: product.color, isSelected: true),
                  const ColorDot(color: Color(0xFF5AB89F)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: kTextColor),
                  children: [
                const TextSpan(text: "Size\n", style: TextStyle(fontSize: 16)),
                TextSpan(
                    text: "${product.size} cm",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22))
              ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
