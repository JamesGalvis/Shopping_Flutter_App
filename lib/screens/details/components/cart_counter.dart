import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key, required this.primaryColor});

  final Color primaryColor;

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            primary: widget.primaryColor,
            icon: Icons.remove,
            press: () {
              if (numOfItems != 0) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Text(numOfItems.toString())),
        buildOutlineButton(
            primary: widget.primaryColor,
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            })
      ],
    );
  }

  Center buildOutlineButton(
      {required IconData? icon,
      required VoidCallback press,
      required Color primary}) {
    return Center(
        child: OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        foregroundColor: primary,
      ),
      child: Icon(icon),
    ));
  }
}
