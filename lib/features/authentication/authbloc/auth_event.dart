part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {}

class AuthLoginEvent extends AuthEvent {
  String email;
  String password;

  AuthLoginEvent(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class AuthRegisterEvent extends AuthEvent {
  String email;
  String password;
  String name;
  String? referralId;

  AuthRegisterEvent(this.email, this.password, this.name,this.referralId);

  @override
  List<Object?> get props => [email, password, name,referralId];
}

class AuthResetPasswordrEvent extends AuthEvent {
  String email;

  AuthResetPasswordrEvent(this.email);

  @override
  List<Object?> get props => [email];
}

class AuthGoogleEvent extends AuthEvent {
  AuthGoogleEvent();

  @override
  List<Object?> get props => [];
}
