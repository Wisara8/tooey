import 'package:flutter/material.dart';
import 'package:todooeytooey/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
            loginButton,
            Container(
              height: 16,
            ),
            signupButton
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
          }
          return null;
        },
      ));

  Widget get passWordTextField => Container(
      padding: EdgeInsets.all(16),
      child: TextFormField(
        decoration: InputDecoration(hintText: "Enter Email"),
        obscureText: true,
        validator: (val) {
          if (val.isEmpty) {
            return 'Enter Password';
          }
          return null;
        },
      ));

  Widget get loginButton => RaisedButton(
        onPressed: () => login(),
        child: Text('Lets login'),
      );

  Widget get signupButton => RaisedButton(
        color: Colors.greenAccent,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signup())),
        child: Text('Lets signin'),
      );

  void login() {
    if (_formKey.currentState.validate()) {
      debugPrint('Logged-IN');
    } else {
      debugPrint('Login Failed');
    }
  }
}
