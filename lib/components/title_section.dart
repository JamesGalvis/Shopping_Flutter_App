import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding),
      child: Text("Women",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
    );
  }
} 
