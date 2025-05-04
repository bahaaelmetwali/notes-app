import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});
  static const String id = 'notesview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [SizedBox(height: 26), Customappbar()]),
    );
  }
}
