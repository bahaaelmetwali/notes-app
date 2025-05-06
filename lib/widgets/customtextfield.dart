import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({
    super.key,
    this.maxlines = 1,
    required this.hint,
    this.onsaved,
  });
  final int maxlines;
  final String hint;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },

      onSaved: onsaved,
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
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
        ),
      ),
    );
  }
}
