import 'package:flutter/material.dart';

import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/selector_view.dart';

class Selectoritem extends StatelessWidget {
  const Selectoritem({super.key, required this.text, this.ontap});
  final String text;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(top: 23, bottom: 23, left: 16),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
