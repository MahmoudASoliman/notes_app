import 'package:flutter/material.dart';
import 'package:note_app/pages/notes_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF303030),
      ),
      home: const NotesView(),
    );
  }
}
