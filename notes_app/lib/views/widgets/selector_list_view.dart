import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/selector_item.dart';

import 'custom_note_item.dart';
class Selectorlistview extends StatelessWidget {
  const Selectorlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 200, bottom: 20, left: 100, right: 100),
      child: Column(children: [
        Selectoritem(text: 'Besoins',),
        SizedBox(height: 50,)
        , Selectoritem(text: 'Disponibles',),
        SizedBox(height: 50,)
      ],)
  
    );
  }
}
