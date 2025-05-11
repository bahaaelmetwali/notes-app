import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver implements BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("change ${change}");
    // TODO: implement onChange
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onChange
        debugPrint("close ${bloc}");

  }
  
  @override
  void onClose(BlocBase bloc) {
    debugPrint("close ${bloc}");

    // TODO: implement onClose
  }
  
  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
  }
}
