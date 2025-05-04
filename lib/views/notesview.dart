import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});
  static const String id = 'notesview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
            SizedBox(height: 26),
            Customappbar(),
            SizedBox(height: 10),
            NotesViewBody(),
          ],
        ),
      ),
    );
  }
}
