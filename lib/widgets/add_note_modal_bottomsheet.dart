import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_fileld.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: "Content",
              maxlines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
