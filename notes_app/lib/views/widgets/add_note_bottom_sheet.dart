import 'package:flutter/material.dart';

import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_button.dart';

class addnotebottomsheet extends StatelessWidget {
  const addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(11.0),
        child: addnoteform(),
      ),
    );
  }
}

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 20),
          customtextfield(
            onsaved: (value) {
              title = value;
            },
            hint: 'Enter your title here',
          ),
          const SizedBox(
            height: 16,
          ),
          customtextfield(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'Enter your note here',
            maxlines: 10,
          ),
          SizedBox(
            height: 30,
          ),
          custombutton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
