import 'package:flutter/material.dart';

import 'custom_icon.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key, required this.Title, required this.icon});
  final String Title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(Title, style: TextStyle(fontSize: 28)),
        Spacer(),
        customsearchicon(
          icon: icon,
        )
      ],
    );
  }
}
