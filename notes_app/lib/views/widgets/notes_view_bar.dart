import 'package:flutter/material.dart';

import 'custom_icon.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Row(
      children: const [
        Text('Notes', style: TextStyle(
          fontSize: 28
          
        )
        ),
        Spacer(),
        customsearchicon()
      ],
    );
  }
}

