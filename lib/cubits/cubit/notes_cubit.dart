import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notemodel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<Notemodel>? Notes;
  fetchAllnotes() {
    var notes = Hive.box<Notemodel>(KNotes);
    Notes = notes.values.toList();
  }
}
