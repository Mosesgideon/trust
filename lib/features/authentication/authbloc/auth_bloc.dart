import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meta/meta.dart';
import 'package:trust/features/authentication/domain/repository/authrepository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;

  AuthBloc(this._repository) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});

    on<AuthLoginEvent>(_mapLoginEventToState);
    on<AuthRegisterEvent>(_mapRegisterEventToState);
    on<AuthResetPasswordrEvent>(_mapResetPasswordeventToState);
    on<AuthGoogleEvent>(_mapGoogleEventToState);
  }

  FutureOr<void> _mapLoginEventToState(
      AuthLoginEvent event, Emitter<AuthState> emit) {
    emit(AuthLoadingState());
    try {
      var response = _repository.loginUser(event.email, event.password);
    } on FirebaseException catch (e, stack) {
      log(e.toString());
      log(stack.toString());
      if (e.code == "user-not-found") {
        log(e.code.toString());
        log("no user found");
      }
      if (e.code == "wrong-password") {
        log(e.code.toString());
        log("invalid password");
      }
    }
  }

  FutureOr<void> _mapRegisterEventToState(
      AuthRegisterEvent event, Emitter<AuthState> emit) {
    emit(AuthLoadingState());
    try {
      var response = FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: event.email, password: event.password);
    } on FirebaseException catch (e) {
      if (e.code == "email-already-in-use") {
        // return CustomDialogs.error("no user found");
        log(e.code.toString());
        log("email-already-in-use");
      }
      if (e.code == "weak-too-password") {
        // return CustomDialogs.error("incorrect login credentials");
        log(e.code.toString());
        log("weak-too-password");
      }
    }
  }

// void _signinUser(UserCredential response) {
//   try {
//     FirebaseFirestore.instance
//         .collection('users')
//         .doc(FirebaseAuth.instance.currentUser?.uid)
//         .update({'number': response.user?.phoneNumber!});
//     emit(AuthSuccessState());
//   } on Exception catch (e) {
//     emit(AuthFailureState(
//         CustomDialogs.error('Something went wrong' ?? e.toString())));
//   }
// }

  FutureOr<void> _mapResetPasswordeventToState(
      AuthResetPasswordrEvent event, Emitter<AuthState> emit) {
    emit(AuthLoadingState());
    try {
      var response = _repository.forgotPassword(event.email);
    } on FirebaseException catch (e) {
      log(e.toString());
      log("email not sent");
      // TODO
    }
  }

  FutureOr<void> _mapGoogleEventToState(
      AuthGoogleEvent event, Emitter<AuthState> emit) {
    emit(AuthLoadingState());
    var response=_repository.authenticateWithGoogle();
  }
}
