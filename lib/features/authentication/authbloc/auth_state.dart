part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable{}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => throw UnimplementedError();
}
class AuthLoadingState extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthSuccessState extends AuthState {
  @override

  List<Object?> get props => [];
}
class AuthFailureState extends AuthState {
  String error;
  AuthFailureState(this.error);
  @override
  List<Object?> get props => [error];
}
