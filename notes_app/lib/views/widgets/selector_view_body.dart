

import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_bar.dart';
import 'package:notes_app/views/widgets/selector_list_view.dart';




class Selectorviewbody extends StatelessWidget {
  const Selectorviewbody({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 70),
         
          Expanded(child: Selectorlistview())
        ],
      ),
    );
  }
}


