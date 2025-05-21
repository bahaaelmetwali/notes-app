import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({
    super.key,
    this.maxlines = 1,
    required this.hint,
    this.onsaved,
    this.onChanged, this.validator,
  });
  final int maxlines;
  final String hint;
  final void Function(String?)? onsaved;
  final void Function(String)? onChanged;
 final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
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
