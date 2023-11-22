import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      forceMaterialTransparency: true,
      leading: IconButton(
        onPressed: () {},
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
