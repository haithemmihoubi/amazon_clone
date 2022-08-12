import 'package:amazon_clone/common/widgets/custom_text_field.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const routeName = '/auth-screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signupFormKey = GlobalKey<FormState>();
  final _signinFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: const Text(
                    "create account",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  leading: Radio(
                      activeColor: GlobalVariables.secondaryColor,
                      value: Auth.signup,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      }),
                ),
                if (_auth == Auth.signup)
                  Form(
                      key: _signupFormKey,
                      child: Column(
                        children: [
                          CustomTextField(
                              controller: nameController,
                              hint: "Enter your name"),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                              controller: emailController,
                              hint: "Enter your email"),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                              controller: passwordController,
                              hint: "Enter your password"),
                        ],
                      )),
                ListTile(
                  title: const Text(
                    "Sign in",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  leading: Radio(
                      activeColor: GlobalVariables.secondaryColor,
                      value: Auth.signin,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
