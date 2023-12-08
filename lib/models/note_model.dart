import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String noteTilte;
  @HiveField(1)
  final String noteSubtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.noteTilte,
    required this.noteSubtitle,
    required this.date,
    required this.color,
  });
}
