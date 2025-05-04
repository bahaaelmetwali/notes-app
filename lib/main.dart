import 'package:flutter/material.dart';
import 'package:notes_app/views/notesview.dart';

void main() {
  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: Notesview.id,
      routes: {Notesview.id: (context) => Notesview()},
    );
  }
}
