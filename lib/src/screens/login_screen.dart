import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String? email = '';
  String? password = '';

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(padding: const EdgeInsets.only(top: 20.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: emailValidation,
      onSaved: (newValue) {
        email = newValue;
      },
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'abc@example.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      validator: passwordValidation,
      onSaved: (newValue) {
        password = newValue;
      },
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState?.save();
          debugPrint('Email: $email');
          debugPrint('Password: $password');
        }
      },
      child: const Text('Submit'),
    );
  }
}
