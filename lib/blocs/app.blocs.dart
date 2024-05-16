import 'package:teoria_0/blocs/app_events.dart';
import 'package:teoria_0/blocs/app_states.dart';
import 'package:teoria_0/repos/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserLoadingState()){
    on<LoadUserEvent>((event,emit) async {
      emit(UserLoadingState());
    });
  }
}