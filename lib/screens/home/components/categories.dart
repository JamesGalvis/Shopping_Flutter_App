import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentCategory = 0;
  final List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
    "Shoes",
    "Jeans",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 1.2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return buildCategory(index);
        },
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentCategory = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: currentCategory == index ? kTextColor : kTextLightColor)),
            Container(
              height: 2,
              width: 30,
              margin: const EdgeInsets.only(top: kDefaultPadding / 4),
              decoration: BoxDecoration(
                color: currentCategory == index ? kTextColor : Colors.transparent, 
                borderRadius: BorderRadius.circular(2)),
            )
          ],
        ),
      ),
    );
  }
}
