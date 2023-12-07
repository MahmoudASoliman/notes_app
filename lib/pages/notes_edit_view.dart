import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_fileld.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(title: "Edit Notes", iconData: Icons.check),
            SizedBox(
              height: 30,
            ),
            CustomTextField(hint: "Title"),
            SizedBox(
              height: 30,
            ),
            CustomTextField(hint: "Contect", maxlines: 5),
          ],
        ),
      ),
    );
  }
}
