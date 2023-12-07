import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

import 'package:note_app/widgets/note_item_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(title: "Notes", iconData: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
