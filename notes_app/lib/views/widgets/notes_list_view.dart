import 'package:flutter/material.dart';

import 'custom_note_item.dart';
class noteslistview extends StatelessWidget {
  const noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 24),
      child: ListView.builder(padding: EdgeInsets.zero,itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 8),
          child:  NotesItem(),
        );
      }),
    );
  }
}
