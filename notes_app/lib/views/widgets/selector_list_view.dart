import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/selector_view.dart';
import 'package:notes_app/views/widgets/selector_item.dart';

class Selectorlistview extends StatelessWidget {
  const Selectorlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 200, bottom: 20, left: 100, right: 100),
        child: Column(
          children: [
            Selectoritem(
              text: 'Besoins',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NotesView();
                }));
              },
            ),
            SizedBox(
              height: 50,
            ),
            Selectoritem(
              text: 'Disponibles',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Selectorview();
                }));
              },
            ),
            SizedBox(
              height: 50,
            )
          ],
        ));
  }
}
