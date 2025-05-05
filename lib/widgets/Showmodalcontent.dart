import 'package:flutter/material.dart';
import 'package:notes_app/widgets/addnote.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class Showmodalcontent extends StatelessWidget {
  const Showmodalcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            Customtextfield(hint: 'Title'),
            SizedBox(height: 25),
            Customtextfield(hint: 'Content', maxlines: 4),
            SizedBox(height: 30),
            Addnote(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
