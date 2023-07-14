import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class addnotebottomsheet extends StatelessWidget {
  const addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          const customtextfield(hint: 'Enter your title here',),
          SizedBox(height: 16,),
          const customtextfield(hint: 'Enter your note here', maxlines: 10,),

        ],
      ),
    );
  }
}
