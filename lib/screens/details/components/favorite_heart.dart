import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/product.dart';

class FavoriteHeart extends StatelessWidget {
  const FavoriteHeart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: product.color, shape: BoxShape.circle),
      child: SvgPicture.asset("assets/icons/heart.svg",
          colorFilter: const ColorFilter.mode(
              Colors.white, BlendMode.srcIn)),
    );
  }
}