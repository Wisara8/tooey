import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class Auth {
  static Future<String> signup(
      {@required String email,
      @required String password,
      @required String name}) async {
    auth.UserCredential userResult =
        await auth.FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, password: password,
//        name: name
    );
    auth.User user = userResult.user;
    return user.uid;
  }
}
