import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/views/notes_view.dart';

import 'package:notes_app/views/selector_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('besoins');
  await Hive.openBox('dispos');

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Ubuntu'),
      home: const Selectorview(),
    );
  }
}
