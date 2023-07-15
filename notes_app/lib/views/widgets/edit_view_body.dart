import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          customappbar(Title: 'Edit note',icon: Icons.check,)
        ],
      ),
    );
  }
}