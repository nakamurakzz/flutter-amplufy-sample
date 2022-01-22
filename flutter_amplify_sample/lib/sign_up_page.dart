import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 40),
          child: Stack(
            children: [
              _signUpForm(),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                    onPressed: () {
                      print("to login page");
                    },
                    child: Text("Already hav an account? Login."),
                  ))
            ],
          )),
    );
  }

  Widget _signUpForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _usernameController,
          decoration:
              InputDecoration(icon: Icon(Icons.person), labelText: "Username"),
        ),
        TextField(
            controller: _emailController,
            decoration:
                InputDecoration(icon: Icon(Icons.email), labelText: "Email")),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              icon: Icon(Icons.password), labelText: "Password"),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),
        TextButton(
          onPressed: _signUp,
          child: Text("Sign Up")
        )
      ],
    );
  }

  void _signUp() {
    final username = _usernameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    print("username: $username");
    print("email: $email");
    print("password: $password");
  }
}
