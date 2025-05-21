import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class Editnotebody extends StatefulWidget {
  const Editnotebody({super.key, required this.note});
  final Notemodel note;

  @override
  State<Editnotebody> createState() => _EditnotebodyState();
}

class _EditnotebodyState extends State<Editnotebody> {
  String? title;

  String? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Customappbar(
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllnotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
            title: 'Edit Note',
          ),
          const SizedBox(height: 25),
          Customtextformfield(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 25),
          Customtextformfield(
            hint: widget.note.content,
            onChanged: (value) {
              content = value;
            },
            maxlines: 4,
          ),
        ],
      ),
    );
  }
}
