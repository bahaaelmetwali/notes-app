import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import 'package:notes_app/widgets/noteslistview.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});
  static const String id = 'notesview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
            SizedBox(height: 26),
            Customappbar(),
            SizedBox(height: 2),
            NotesListview(),
          ],
        ),
      ),
    );
  }
}
