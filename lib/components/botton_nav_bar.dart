import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottonNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottonNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:20),
      child: GNav(
        color: Colors.grey,
        tabActiveBorder: Border.all(color: Colors.black),
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 35,
        onTabChange: (value) => onTabChange!(value),
        tabs: const[
          GButton(icon: Icons.home,
                  text: 'Shop',),
          GButton(icon: Icons.shopping_bag_rounded,
                  text: 'Cart',),
        ]),
    );
  }
} 