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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.network(
                      'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
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
                        _username = value;
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
              )),
              Container(
                margin: const EdgeInsets.only(top: 150),
                child: Text('João Vitor de For dos Santos @ 2024'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
