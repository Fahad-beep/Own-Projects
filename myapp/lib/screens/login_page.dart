import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myapp/reusableWidget/image_widget.dart';
import 'package:myapp/reusableWidget/textFields.dart';
import 'package:myapp/reusableWidget/image_widget.dart';
import 'package:myapp/reusableWidget/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            showImage(
                path: "images/logo.png",
                width: 490,
                height: 250,
                alignment: Alignment.center),
            const Text(
              'Log in as a Rider',
              style: TextStyle(fontSize: 24, fontFamily: 'Brand-Bold'),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  SizedBox(height: height * 0.1),
                  takeCredentials(text: 'Email', obscure: false),
                  SizedBox(height: height * 0.01),
                  takeCredentials(text: 'Password', obscure: true),
                  SizedBox(height: height * 0.2),
                  signButton(
                    text: 'Log In',
                    onTap: () {
                      log('logging in');
                    },
                  ),
                  regButt(
                    text: 'Don\'t Have An Account? Regester here',
                    onTap: () {
                      log('logging in');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
