import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/Showmodalcontent.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/noteslistview.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});
  static const String id = 'notesview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimarycolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {
          showModalBottomSheet(
  
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
