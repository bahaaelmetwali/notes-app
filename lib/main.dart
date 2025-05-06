import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/editnoteview.dart';
import 'package:notes_app/views/notesview.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox<Notemodel>(KNotes);
  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      initialRoute: Notesview.id,
      routes: {
        Notesview.id: (context) => Notesview(),
        Editnoteview.id: (context) => Editnoteview(),
      },
    );
  }
}
