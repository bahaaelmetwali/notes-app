import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addnotecubit_state.dart';

class AddnotecubitCubit extends Cubit<AddnotecubitState> {
  AddnotecubitCubit() : super(AddnotecubitInitial());
}
