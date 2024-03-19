import 'package:flutter/material.dart';

Widget takeCredentials({String? text, required bool obscure}) {
  return TextField(
    keyboardType: TextInputType.emailAddress,
    obscureText: obscure,
    style: const TextStyle(fontSize: 14),
    decoration: InputDecoration(
      labelText: text,
      labelStyle: const TextStyle(fontSize: 14),
    ),
  );
}
