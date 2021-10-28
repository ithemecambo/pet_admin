import 'package:flutter/material.dart';
import 'package:pet_admin/src/theme/constrants.dart';
import 'package:pet_admin/src/theme/theme_color.dart';

class BrowserButton extends StatelessWidget {
  const BrowserButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      color: kButtonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      onPressed: () {},
      child: Text(
        "Browser Products",
        style: TextStyle(
            fontSize: 16.0,
            color: Colors.white
        ),
      ),
    );
  }
}
