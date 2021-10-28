import 'package:flutter/material.dart';
import 'package:pet_admin/src/theme/constrants.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebMenu(),
    );
  }
}

class MenuContainer extends StatelessWidget {
  const MenuContainer({Key? key, required this.title, required this.press,}): super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}

class WebMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuContainer(title: "Dogs", press: () { print("Dogs");}),
        MenuContainer(title: "Cats", press: () {print("Cats");}),
        MenuContainer(title: "Birds", press: () {print("Birds");}),
        MenuContainer(title: "Fish", press: () {print("Fish");}),
      ],
    );
  }
}
