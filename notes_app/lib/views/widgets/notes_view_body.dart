import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_bar.dart';

import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        
        children: [
          SizedBox(height: 30),
          customappbar(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: NotesItem(),
          ),

        ],
      ),
    );
  }
}
