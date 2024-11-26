// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _username = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                Container(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_username.isEmpty || _password.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                            'Username and password are required',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    } else {
                      Navigator.of(context).pushNamed('/home');
                    }
                  },
                  child: const Text(
                    'Login',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
