import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';

class customtextfield extends StatelessWidget {
  const customtextfield(
      {super.key, required this.hint, this.maxlines = 1, this.onsaved});

  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else
          return null;
      },
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
