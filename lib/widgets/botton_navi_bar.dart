import 'package:flutter/material.dart';
import 'package:wexo_ecommarce/const/colors/colors.dart';
import 'package:wexo_ecommarce/const/size/size.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kWhiteColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavigationButtons(
              icon: Icons.home,
              color: baseColor,
              title: "Home",
              navigation: () {},
            ),
            BottomNavigationButtons(
              icon: Icons.feed_outlined,
              color: baseColor,
              title: "Feeds",
              navigation: () {},
            ),
            BottomNavigationButtons(
              icon: Icons.format_list_bulleted_outlined,
              color: baseColor,
              title: "Orders",
              navigation: () {},
            ),
            BottomNavigationButtons(
              icon: Icons.shopping_cart,
              color: baseColor,
              title: "Cart",
              navigation: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationButtons extends StatelessWidget {
  const BottomNavigationButtons({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.navigation,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Color color;
  final Function() navigation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight10,
        CircleAvatar(
          backgroundColor: color,
          radius: 25,
          child: IconButton(
            onPressed: navigation,
            icon: Icon(
              icon,
              color: kWhiteColor,
            ),
          ),
        ),
        kHeight5,
        Text(
          title,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
