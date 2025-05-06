part of 'addnotecubit_cubit.dart';

@immutable
sealed class AddnotecubitState {}

final class AddnotecubitInitial extends AddnotecubitState {}

final class AddnotecubitLoading extends AddnotecubitState {}

final class AddnotecubitSucess extends AddnotecubitState {}

final class AddnotecubitFailure extends AddnotecubitState {
  final String errormessage;
  AddnotecubitFailure(this.errormessage);
}
