import 'package:flutter/material.dart';
import 'package:shop_app/components/title_section.dart';
import 'package:shop_app/screens/home/components/categories.dart';
import 'package:shop_app/screens/home/components/product_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSection(), 
        Categories(), 
        ProductList()
      ]
    );
  }
}
