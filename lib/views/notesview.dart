import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/Showmodalcontent.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/noteslistview.dart';

class Notesview extends StatefulWidget {
  const Notesview({super.key});
  static const String id = 'notesview';

  @override
  State<Notesview> createState() => _NotesviewState();
}

class _NotesviewState extends State<Notesview> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllnotes();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimarycolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Showmodalcontent();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: const Column(
          children: [
            SizedBox(height: 30),
            Customappbar(icon: Icons.search, title: 'Notes'),

            NotesListview(),
          ],
        ),
      ),
    );
  }
}
