import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: product.color,
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      forceMaterialTransparency: true,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          "$iconsPath/back.svg",
          height: 18,
          colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "$iconsPath/search.svg",
              height: 18,
              colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            )),
        IconButton(
            onPressed: () {},
            icon: Badge(
              label: const Text("0"),
              offset: const Offset(8, -6),
              child: SvgPicture.asset(
                "$iconsPath/shopping-cart.svg",
                height: 18,
                colorFilter:
                    const ColorFilter.mode(kTextColor, BlendMode.srcIn),
              ),
            ))
      ],
    );
  }
}
