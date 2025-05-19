import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/addnotecubit_cubit.dart';
import 'package:notes_app/widgets/noteaddition.dart';

class Showmodalcontent extends StatelessWidget {
  const Showmodalcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnotecubitCubit(),
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
          return  AbsorbPointer(
            absorbing: state is AddnotecubitLoading ? true : false,
            child: Padding(
              padding:  EdgeInsets.only(top: 8 ,right: 8 ,left: 8 ,
              bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const  SingleChildScrollView(child: noteaddition()),
            ),
          );
        },
      ),
    );
  }
}
