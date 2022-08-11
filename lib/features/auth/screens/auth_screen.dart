import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth { signnin, signup }

class AuthScreen extends StatefulWidget {
  static const routeName = '/auth-screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
   Auth _auth=Auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children:  [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                ListTile(
                  title: Text(
                    "create account",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  leading: Radio(
                      value: Auth.signup,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth= val!;
                        });
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
