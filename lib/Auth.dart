import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class Auth {
  static Future<String> signup(
      {@required String email, @required String password}) async {
    auth.UserCredential userResult = await auth.FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    auth.User user = userResult.user;
    return user.uid;
  }
}
