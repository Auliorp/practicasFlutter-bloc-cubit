import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameCubit extends Cubit<String> {
  //constructor
  UsernameCubit() : super("no-username") {
    print("UsernameCubit Constructor called");
  }

  void setUsername(String username) {
    emit(username);
  }
}
