import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class Editnotebody extends StatelessWidget {
  const Editnotebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Customappbar(icon: Icons.check, title: 'Edit Note'),
          const SizedBox(height: 25),
          Customtextfield(hint: 'Title'),
          const SizedBox(height: 25),
          Customtextfield(hint: 'Content', maxlines: 4),
        ],
      ),
    );
  }
}
