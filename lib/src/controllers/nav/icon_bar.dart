import 'package:flutter/material.dart';
import 'package:pet_admin/src/theme/theme_color.dart';

class IconBar extends StatelessWidget {
  const IconBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButtonHeader(icon: Icons.person_outlined, press: () { print("Account");},),
          IconButtonHeader(icon: Icons.shopping_bag_outlined, press: () { print("Cart");},),
        ],
      ),
    );
  }
}

class IconButtonHeader extends StatelessWidget {

  IconButtonHeader({Key? key, required this.icon, required this.press}): super(key: key);
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kTextColor.withOpacity(0.2)),
      ),
      child: IconButton(
        onPressed: press,
        icon: Icon(icon),
      ),
    );
  }
}