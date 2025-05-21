import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        child: BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            List<Notemodel> notes =
                BlocProvider.of<NotesCubit>(context).Notes!.reversed.toList();
            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: NotesViewBody(note: notes[index]),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
