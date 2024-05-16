import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class UserState extends Equatable {}
// the initial state, need each class for each state
//data loading state
class UserLoadingState extends UserState {
  @override
  List<Object> get props => [];
}
