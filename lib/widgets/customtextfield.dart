import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, this.maxlines = 1, required this.hint});
  final int maxlines;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 15, color: kPrimarycolor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimarycolor),
        ),
      ),
    );
  }
}
