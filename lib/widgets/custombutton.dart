import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class Customutton extends StatelessWidget {
  const Customutton({super.key, required this.ontap, this.isLoading = true});
  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child:  Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: kPrimarycolor,
        ),

        child: Center(
          child:
              isLoading
                  ? const  CircularProgressIndicator(color: Colors.black)
                  : const  Text(
                    'Add',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
        ),
      ),
    );
  }
}
