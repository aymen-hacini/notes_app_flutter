import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({super.key, required this.hint,  this.maxlines = 1});

  final String hint;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      maxLines: maxlines,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 16, top: 35),
          hintText: hint,

          //border: buildborder(),
          enabledBorder: buildborder(Colors.amber),
          focusedBorder: buildborder(kprimarycolor)),
    );
  }

  OutlineInputBorder buildborder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: color ?? Colors.white));
}
