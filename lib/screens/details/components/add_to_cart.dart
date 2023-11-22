import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: product.color)),
              child: IconButton(
                icon: SvgPicture.asset(
                    "assets/icons/shopping-cart-add.svg"),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: kDefaultPadding),
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: const Center(
                    child: Text("Buy now", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}