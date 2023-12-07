import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/pages/notes_view.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/pages/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = SimpleBlocObserver();

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Poppins",
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF303030),
        ),
        home: const NotesView(),
      ),
    );
  }
}
