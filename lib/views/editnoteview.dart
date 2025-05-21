import 'package:flutter/material.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/editnotebody.dart';

class Editnoteview extends StatelessWidget {

  const Editnoteview({super.key});
  static const String id = 'editnoteview';
  @override
  Widget build(BuildContext context) {
          final note = ModalRoute.of(context)!.settings.arguments as Notemodel;

    return Scaffold(body: Editnotebody(note: note,));
  }
}
