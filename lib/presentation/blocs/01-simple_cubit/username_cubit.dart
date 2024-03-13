import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameCubit extends Cubit<String> {
  //constructor
  UsernameCubit() : super("no-username");

  void setUsername(String username) {
    emit(username);
  }
}
