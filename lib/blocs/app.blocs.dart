import 'package:teoria_0/blocs/app_events.dart';
import 'package:teoria_0/blocs/app_states.dart';
import 'package:teoria_0/repos/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserLoadingState()){
    on<LoadUserEvent>((event,emit) async {
      emit(UserLoadingState());
      // print("you emitted the first state"); it is possible to send things middle
      try {
        final users = await _userRepository.getUsers();
        emit(UserLoadedState(users));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
      // emit(UserLoadedState());
    });
  }
}