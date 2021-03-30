import 'package:flutter/material.dart';
import '../Auth.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: loginForm,
    ));
  }

  Widget get loginForm => Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emailTextfield,
            Container(
              height: 16,
            ),
            passWordTextField,
            Container(
              height: 16,
            ),
            loginButton
          ],
        )),
      );

  Widget get emailTextfield => Container(
      padding: EdgeInsets.all(16),
      child: TextFormField(
        decoration: InputDecoration(hintText: "Enter Email"),
        validator: (val) {
          if (val.isEmpty) {
            return 'Enter Email';
          } else {
            _email = val;
          }
          return null;
        },
      ));

  Widget get passWordTextField => Container(
      padding: EdgeInsets.all(16),
      child: TextFormField(
        decoration: InputDecoration(hintText: "Enter Password"),
        obscureText: true,
        validator: (val) {
          if (val.isEmpty) {
            return 'Enter Password';
          } else {
            _password = val;
          }
          return null;
        },
      ));

  Widget get loginButton => RaisedButton(
        onPressed: () => Signup(),
        child: Text('Lets signin'),
      );

  void singUp() => processLogin();

  void processLogin() {
    print("called");
    if (_formKey.currentState.validate()) {
      Auth.signup(email: _email, password: _password);
    } else {
      debugPrint('Login Failed');
    }
  }

  void Signup() {
    if (_formKey.currentState.validate()) {
      Auth.signup(email: _email, password: _password);
    } else {
      debugPrint("Login Fail");
    }
  }
}
