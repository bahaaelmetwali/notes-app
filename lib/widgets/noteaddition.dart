import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/addnotecubit_cubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/colorslistview.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/customtextfield.dart';
import 'package:intl/intl.dart';

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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 25),
          Customtextformfield(
            hint: 'Content',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            maxlines: 5,

            onsaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 15),
          ColorsListView(),
          const SizedBox(height: 15),
          BlocBuilder<AddnotecubitCubit, AddnotecubitState>(
            builder: (context, state) {
              return Customutton(
                isLoading: state is AddnotecubitLoading,
                ontap: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    var note = Notemodel(
                      title: title!,
                      content: content!,
                      color:
                          BlocProvider.of<AddnotecubitCubit>(
                            context,
                          ).color.value,
                      date:
                          DateFormat(
                            'd-MMMM-yyyy',
                          ).format(DateTime.now()).toString(),
                    );
                    BlocProvider.of<AddnotecubitCubit>(context).addnote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
