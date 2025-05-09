import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/addnotecubit_cubit.dart';
import 'package:notes_app/widgets/addnote.dart';

class Showmodalcontent extends StatelessWidget {
  const Showmodalcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: BlocConsumer<AddnotecubitCubit, AddnotecubitState>(
          listener: (context, state) {
            if (state is AddnotecubitSucess) {
              Navigator.pop(context);
            }
            if (state is AddnotecubitFailure) {
              print('error is${state.errormessage}');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddnotecubitLoading ? true : false,
              child: noteaddition(),
            );
          },
        ),
      ),
    );
  }
}
