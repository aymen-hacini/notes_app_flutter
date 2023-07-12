import 'package:flutter/material.dart';

class customsearchicon extends StatelessWidget {
  const customsearchicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(20)),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }
}
