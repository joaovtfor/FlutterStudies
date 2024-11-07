// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              // onChanged: (value) {
              //   setState(() {
              //     _username = value;
              //   });
              // },
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const TextField(
              // onChanged: (value) {
              //   setState(() {
              //     _password = value;
              //   });
              // },
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20.0)),
              onPressed: () {
                // if (_username.isEmpty || _password.isEmpty) {
                //   Scaffold.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text('Please enter both username and password'),
                //     ),
                //   );
                // } else {
                //   // Simulate login
                //   Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => HomePage(),
                //     ),
                //   );
                // }#
                print("Logado com sucesso!");
              },
              child: Center(
                  child: const Text(
                'Login',
              )),
            ),
          ],
        ),
      ),
    );
  }
}
