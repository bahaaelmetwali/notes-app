import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class noteaddition extends StatefulWidget {
  const noteaddition({super.key});

  @override
  State<noteaddition> createState() => _noteadditionState();
}

class _noteadditionState extends State<noteaddition> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 25),
          Customtextformfield(
            hint: 'Title',
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 25),
          Customtextformfield(
            hint: 'Content',
            maxlines: 4,
            onsaved: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 30),
          Customutton(
            ontap: () {
              if (globalKey.currentState!.validate()) {
                globalKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
