import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notemodel.dart';

part 'addnotecubit_state.dart';

class AddnotecubitCubit extends Cubit<AddnotecubitState> {
  AddnotecubitCubit() : super(AddnotecubitInitial());
  Color color = Color(0xFF006D77);
  addnote(Notemodel note) async {
    color = Color(note.color);
    emit(AddnotecubitLoading());
    try {
      var notes = Hive.box<Notemodel>(KNotes);
      await notes.add(note);
      emit(AddnotecubitSucess());
    } catch (e) {
      AddnotecubitFailure(e.toString());
    }
  }
}
