import 'package:flutter/material.dart';
import 'package:pet_admin/src/controllers/nav/icon_bar.dart';
import 'package:pet_admin/src/controllers/nav/nav_bar.dart';
import 'package:pet_admin/src/theme/constrants.dart';
import 'package:pet_admin/src/theme/theme_color.dart';
import 'package:pet_admin/src/views/browser_button.dart';
import 'package:pet_admin/src/views/search_bar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: kPrimaryColor,
            width: double.infinity,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "PET ADMIN",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            NavBar(),
                            Spacer(),
                            IconBar(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SearchBar(),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "High-quality\nproducts for\nyour pets",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                BrowserButton(),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("assets/images/dog-th-1.jpg")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
