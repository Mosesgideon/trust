import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trust/features/authentication/domain/repository/authrepository.dart';

class AuthRepositoryIMPL extends AuthRepository {
  @override
  Future<void> loginUser(String email, String password) async {
    try {
      var response = FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        // return CustomDialogs.error("User not found");
      } else if (e.code == 'wrong-password') {
        // return CustomDialogs.error("Wrong password");
      }
    }
  }
  @override
  Future<void> registerUser(String email, String password, String name) async {
    try {
      var response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      if (e.code == "email-already-in-use") {
        log(e.code);
      } else if (e.code == "weak-too-password") {
        log(e.code);
      }
    }
  }
  @override
  Future<void> authenticateWithGoogle() async {
    try {
      await GoogleSignIn().signOut();
      final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: [
        'email',
        'profile',
      ]).signIn();

      if (googleUser != null) {
      } else {
        throw 'Google auth failed.';
      }
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      throw e.toString();
    }
  }
  @override
  Future<void> forgotPassword(String email) async {
    try {
      var response =
          await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseException catch (e) {
      log(e.toString());
    }
    throw "email reset password not sent";
  }
}
