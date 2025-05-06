import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class Customutton extends StatelessWidget {
  const Customutton({super.key,required this.ontap});
  final void Function()? ontap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: kPrimarycolor,
        ),

        child: Center(
          child: Text(
            'Add',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
