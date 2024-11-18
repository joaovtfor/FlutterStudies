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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 250,
                        child: Image.asset(
                          'assets/img/Logo-tempo-integral.png',
                        ),
                      ),
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            _username = value;
                          });
                        },
                        decoration: const InputDecoration(
                            labelText: 'Username',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
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
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
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
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800], elevation: 100),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 300,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: Text('João Vitor de For dos Santos @ 2024'),
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
