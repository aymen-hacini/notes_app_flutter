

import 'package:flutter/material.dart';

import 'constants.dart';

class custombutton extends StatelessWidget {
  const custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kprimarycolor, borderRadius: BorderRadius.circular(24)
      ),
      child: const Center(
        child: Text('Add', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),),
      ),
    );
  }
}