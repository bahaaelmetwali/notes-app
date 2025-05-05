import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class Addnote extends StatelessWidget {
  const Addnote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kPrimarycolor,
      ),
    
      child: Center(
        child: Text('Add', style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );
  }
}
